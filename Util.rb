require './String.rb'

class Util

    def self.format(tag, value)
        if value.length > 0
            if tag[0].include? Format::FIRST_TO_LOWER
                value = value.firstToLower
            end
            if tag[0].include? Format::FIRST_TO_UPPER
                value = value.firstToUpper
            end
            if tag[0].include? Format::CAMELCASE
                value = value.camelcase
            end
        end
        return tag.pre_match +
        value +
        tag.post_match
    end

end