require './Util.rb'

class Template

    module Regex
        BETWEEN_FIELDS = /\{@FIELDS}(.*?){@FIELDS}/m
        BETWEEN_KEY = /\{@KEY(.*?)}/m
        BETWEEN_TYPE = /\{@TYPE(.*?)}/m
        BETWEEN_VALUE = /\{@VALUE(.*?)}/m
    end
    
    @@template = ""

    def initialize(template)
        @@template = template
    end

    def setTemplate(data)
        data.each do |object, values|
            template = @@template.gsub(Tags::OBJECT, object)
            template = setFields(template, values)
            puts template
        end
    end

    def setKeysAndTypes(template, fields, values)
        fieldsConverted = ""
        values.each do |key, values|
            if key.class.name == Types::HASH
                fieldsConverted+=setKeysAndTypes(template, fields, key)
            else
                fieldsWithKey = fields
                fieldsWithKey = setKeys(template, fieldsWithKey, key)
                fieldsWithKey = setTypes(template, fieldsWithKey, values[Model::TYPE])
                fieldsWithKey = setValues(template, fieldsWithKey, values[Model::VALUE].to_s, values[Model::TYPE])
                fieldsConverted+=fieldsWithKey
            end
        end
        return fieldsConverted
    end
    
    def setFields(template, values)
        fields = template.match(Regex::BETWEEN_FIELDS, 1)
        templateReplaced = template
        if fields.class.name != Types::NILCLASS
            if fields.captures.length > 0
                templateReplaced = 
                fields.pre_match +
                setKeysAndTypes(template, fields.captures[0], values) +
                fields.post_match
                templateReplaced = setFields(templateReplaced, values)
            else 
                return templateReplaced
            end
        end
        return templateReplaced
    end

    def setKeys(template, fields, key)
        betweenKey = fields.match(Regex::BETWEEN_KEY, 1)
        formated = Util.format(betweenKey, key)
        betweenKey = formated.match(Regex::BETWEEN_KEY, 1)
        if betweenKey.class.name != Types::NILCLASS
            if betweenKey.captures.length > 0 
                return setKeys(template, formated, key)
            end
        end
        return formated
    end

    def setTypes(template, fields, type)
        betweenType = fields.match(Regex::BETWEEN_TYPE, 1)
        if betweenType.class.name != Types::NILCLASS
            formated = Util.format(betweenType, type)
            betweenType = formated.match(Regex::BETWEEN_TYPE, 1)
            if betweenType.class.name != Types::NILCLASS
                if betweenType.captures.length > 0 
                    return setTypes(template, formated, type)
                end
            end
            return formated
        end
        return fields
    end

    def setValues(template, fields, value, type)
        if type == Types::STRING
            value = '"' + value + '"'
        end
        betweenValue = fields.match(Regex::BETWEEN_VALUE, 1)
        if betweenValue.class.name != Types::NILCLASS
            formated = Util.format(betweenValue, value)
            betweenValue = formated.match(Regex::BETWEEN_VALUE, 1)
            if betweenValue.class.name != Types::NILCLASS
                if betweenValue.captures.length > 0 
                    return setValues(template, formated, value)
                end
            end
            return formated
        end
        return fields
    end
end