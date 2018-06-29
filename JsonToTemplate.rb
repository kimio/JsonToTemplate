require 'json'
require './Template.rb'

module Types
    HASH = "Hash"
    ARRAY = "Array"
    STRING = "String"
    INT = "Integer"
    FLOAT = "Float"
    NILCLASS = "NilClass"
    OBJECT = "Object"
end

ARGS_HELP = ["-h", "--help"]

class JsonToTemplate
    JSON_EXTENSION = ".json"
    JSON_PATH = "json/*.json"
    TEMPLATE_NOT_FOUND = "Template not found :("
    INVALID_TEMPLATE = "Invalid Template :p"
    HOW_TO_USE = "How to use"

    module Keys
        TYPE = "Type"
        VALUE = "Value"
    end

    @@hash = Hash.new

    def addNewKeyObject(key, fileName, arrayCounter)
        if arrayCounter == -1
            if @@hash[fileName] 
                @@hash[fileName].store(key, {Keys::TYPE => "["+key+"]"})
            end
        else
            @@hash[fileName][arrayCounter].store(key, {Keys::TYPE => key})
        end
    end

    def verifyType(key, value, fileName, arrayCounter = -1)
        case value.class.name
        when Types::HASH
            addNewKeyObject(key, fileName, arrayCounter)
            readJsonData(value, key, arrayCounter)
        when Types::ARRAY
            addNewKeyObject(key, fileName, arrayCounter)
            readArrayData(value, key, arrayCounter)
        else 
            if @@hash[fileName].class.name == Types::HASH
                @@hash[fileName].store(key, {Keys::TYPE => value.class.name, Keys::VALUE => value})
            else
                if !@@hash[fileName][arrayCounter].instance_of? Hash
                    @@hash[fileName][arrayCounter] = Hash.new
                end
                @@hash[fileName][arrayCounter].store(key, {Keys::TYPE => value.class.name, Keys::VALUE => value})
            end
        end
    end

    def readArrayData(value, fileName, arrayCounter)
        if !@@hash[fileName].instance_of? Array
            @@hash[fileName] = Array.new
        end
        i=-1
        value.each do |data|
            readJsonData(data, fileName, i+=1)
        end
    end

    def readJsonData(data, fileName, arrayCounter = -1)
        if !@@hash[fileName] 
            @@hash.store(fileName, {})
        end
        data.each do |key, value|
            verifyType(key, value, fileName, arrayCounter)
        end
    end

    def readJsonFile(jsonFile)
        fileName = File.basename(jsonFile, JSON_EXTENSION)
        data = JSON.parse(File.read(jsonFile))
        @@hash.store(fileName, {})
        readJsonData(data, fileName)
    end

    def createTemplate(templateFile = "")
        if templateFile.to_s == ""
            puts TEMPLATE_NOT_FOUND
        else
            begin
                templateData = File.read(templateFile)
                Dir[JSON_PATH].each do |jsonFile|
                    readJsonFile jsonFile
                end
                template = Template.new(templateData)
                template.setTemplate(@@hash)
            rescue Errno::ENOENT => e
                puts INVALID_TEMPLATE
                exit -1
            end
        end
        
    end
end

if ARGS_HELP.include? ARGV[0]
    puts JsonToTemplate::HOW_TO_USE
else
    jsonToTemplate = JsonToTemplate.new()
    jsonToTemplate.createTemplate(ARGV[0])
end