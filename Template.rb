class Template

    module Regex
        BETWEEN_FIELDS = /\{@FIELDS}(.*?){@FIELDS}/m
        BETWEEN_KEY = /\{@KEY(.*?)}/m
    end
    
    @@template = ""

    def initialize(template)
        @@template = template
    end

    def format(tag, value)
        if tag.captures.length > 0
            if tag[0].include? Format::FIRST_TO_LOWER
                value = firstToLower(value)
            end
            return tag.pre_match +
            value +
            tag.post_match
        end
    end

    def firstToLower(string)
        str = string
        return str[0].downcase + str[1..-1]
    end

    def setTemplate(data)
        # puts data
        data.each do |object, values|
            # class name
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
                fieldsReplaced = ""
                fieldsWithKey = fields
                fieldsWithKey = setKeys(template, fieldsWithKey, key)
                fieldsReplaced+= setTypes(template, fieldsWithKey, values)
                fieldsConverted+=fieldsReplaced
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
        formated = format(betweenKey, key)
        betweenKey = formated.match(Regex::BETWEEN_KEY, 1)
        if betweenKey.class.name != Types::NILCLASS
            if betweenKey.captures.length > 0 
                return setKeys(template, formated, key)
            end
        end
        return formated
    end

    def setTypes(template, fields, values)
        return fields.gsub(Tags::TYPE, values[Model::TYPE])
    end
end