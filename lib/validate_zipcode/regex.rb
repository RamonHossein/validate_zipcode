module ValidateZipcode
  module Regex
    def self.US(zipcode)
      match = zipcode =~ /^([0-9]{5})$|([0-9]{9})$|([0-9]{5}-[0-9]{4})$/
      match == 0 ? true : false
    end

    def self.BR(zipcode)
      match = zipcode =~ /^([0-9]{5}-[0-9]{3})$|([0-9]{8})$/
      match == 0 ? true : false
    end

    def self.FR(zipcode)
      match = zipcode =~ /^([0-9]{5})$/
      match == 0 ? true : false
    end

    def self.IT(zipcode)
      match = zipcode =~ /^([0-9]{5})$/
      match == 0 ? true : false
    end

    def self.DE(zipcode)
      match = zipcode =~ /^([0-9]{5})$/
      match == 0 ? true : false
    end

    def self.ES(zipcode)
      match = zipcode =~ /^([0-9]{5})$/
      match == 0 ? true : false
    end

    def self.CN(zipcode)
      match = zipcode =~ /^([0-9]{6})$/
      match == 0 ? true : false
    end

    def self.JP(zipcode)
      match = zipcode =~ /^([0-9]{3}-[0-9]{4})$|([0-9]{7})$/
      match == 0 ? true : false
    end
  end
end
