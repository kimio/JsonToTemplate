class Util

    def firstToLower(string)
        str = string
        return str[0].downcase + str[1..-1]
    end

    def firstToUpper(string)
        str = string
        return str[0].upcase + str[1..-1]
    end

    def self.execute(tag, value)
        if tag.captures.length > 0
            if tag[0].include? Format::FIRST_TO_LOWER
                value = firstToLower(value)
            end
            if tag[0].include? Format::FIRST_TO_UPPER
                value = firstToUpper(value)
            end
            return tag.pre_match +
            value +
            tag.post_match
        end
    end
end