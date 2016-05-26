module ValidateZipcode
  class Validator
    def initialize(zipcode, locale)
      @zipcode = zipcode
      variables(locale) unless @zipcode.blank?
    end

    def valid?
      return true if @zipcode.blank?
      @match
    end

    private
      def variables(locale)
        @match = regex_zipcode(locale.upcase)
      end

      def regex_zipcode(locale)
        if ValidateZipcode::Regex.respond_to?(locale)
          return ValidateZipcode::Regex.send(locale, @zipcode)
        end
        true
      end
  end
end
