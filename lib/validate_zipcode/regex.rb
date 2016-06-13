module ValidateZipcode
  module Regex
    # Algeria
    def self.DZ(zipcode)
      match = zipcode =~ /^([0-9]{5})$/
      match == 0 ? true : false
    end
    # Australia
    def self.AU(zipcode)
      match = zipcode =~ /^([0-9]{4})$/
      match == 0 ? true : false
    end
    # Austria
    def self.AT(zipcode)
      match = zipcode =~ /^([0-9]{4})$/
      match == 0 ? true : false
    end
    # Brazil
    def self.BR(zipcode)
      match = zipcode =~ /^([0-9]{5}-[0-9]{3})$|([0-9]{8})$/
      match == 0 ? true : false
    end
    # China
    def self.CN(zipcode)
      match = zipcode =~ /^([0-9]{6})$/
      match == 0 ? true : false
    end
    # Denmark
    def self.DK(zipcode)
      match = zipcode =~ /^([0-9]{4})$/
      match == 0 ? true : false
    end
    # Deutsch or Germany
    def self.DE(zipcode)
      match = zipcode =~ /^([0-9]{5})$/
      match == 0 ? true : false
    end
    # Estonia
    def self.EE(zipcode)
      match = zipcode =~ /^([0-9]{5})$/
      match == 0 ? true : false
    end
    # Finland
    def self.FI(zipcode)
      match = zipcode =~ /^([0-9]{5})$/
      match == 0 ? true : false
    end
    # France
    def self.FR(zipcode)
      match = zipcode =~ /^([0-9]{5})$/
      match == 0 ? true : false
    end
    # Indonesia
    def self.ID(zipcode)
      match = zipcode =~ /^([0-9]{5})$/
      match == 0 ? true : false
    end
    # Israel
    def self.IL(zipcode)
      match = zipcode =~ /^([0-9]{5})$/
      match == 0 ? true : false
    end
    # Italy
    def self.IT(zipcode)
      match = zipcode =~ /^([0-9]{5})$/
      match == 0 ? true : false
    end
    # Japan
    def self.JP(zipcode)
      match = zipcode =~ /^([0-9]{3}-[0-9]{4})$|([0-9]{7})$/
      match == 0 ? true : false
    end
    # Kazakhstan
    def self.KZ(zipcode)
      match = zipcode =~ /^([0-9]{6})$/
      match == 0 ? true : false
    end
    # Singapore
    def self.SG(zipcode)
      match = zipcode =~ /^([0-9]{5})$/
      match == 0 ? true : false
    end
    # Spain
    def self.ES(zipcode)
      match = zipcode =~ /^([0-9]{5})$/
      match == 0 ? true : false
    end
    # United Stade
    def self.US(zipcode)
      match = zipcode =~ /^([0-9]{5})$|([0-9]{9})$|([0-9]{5}-[0-9]{4})$/
      match == 0 ? true : false
    end
  end
end
