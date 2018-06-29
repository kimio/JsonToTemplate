class Template

    module Tags
        OBJECT = "{@OBJECT}"
    end

    module Regex
        BETWEEN_FIELDS = /\{@FIELDS}(.*?){@FIELDS}/m
    end
    
    @@template = ""

    def initialize(template)
        @@template = template
    end

    def setTemplate(data)
        # puts data
        data.each do |object, values|
            template = @@template.gsub(Tags::OBJECT, object)
            template = setFields(template, values)
        end
    end

    def setKeysAndTypes(template, values)
        values.each do |key|
            if key.class.name == "Hash"
                # puts key
            else
                setKeys(template, values)
            end
        end
    end
    
    def setFields(template, values)
        fields = template.slice(Regex::BETWEEN_FIELDS, 1)
        if fields.length > 1
            setKeysAndTypes(template, values)
        end
    end

    def setKeys(template, fields)
        puts fields
    end

    def setType(template, fields)
    end
end