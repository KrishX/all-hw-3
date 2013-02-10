#Part A

class Numeric
    @@currencies = {'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019, 'dollar' => 1}
    def method_missing(method_id)
        singular_currency = method_id.to_s.gsub( /s$/, '')
        if @@currencies.has_key?(singular_currency)
            self * @@currencies[singular_currency]
        else
            super
        end
    end

    def in(currency)
        singular_currency = currency.to_s.gsub( /s$/, '')
        if @@currencies.has_key?(singular_currency)
            self / @@currencies[singular_currency]
        else
            nil
        end
    end
end


#Part B

class String
    def palindrome?
        raw_string = gsub(/\W/, '')
        raw_string.downcase == raw_string.downcase.reverse
    end
end


#Part C

module Enumerable
    def palindrome?
        self.to_a == self.to_a.reverse
    end
end