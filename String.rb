class String

    def firstToLower
        self[0].downcase + self[1..-1]
    end

    def firstToUpper
        self[0].upcase + self[1..-1]
    end

    def camelcase
        self.firstToLower.split('_').inject([]){ |buffer,e| buffer.push(buffer.empty? ? e : e.capitalize) }.join
    end
end
