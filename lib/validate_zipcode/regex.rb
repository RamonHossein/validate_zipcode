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
    # Ethiopia
    def self.ET(zipcode)
      match = zipcode =~ /^([0-9]{4})$/
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
    # Romania
    def self.RO(zipcode)
      match = zipcode =~ /^([0-9]{6})$/
      match == 0 ? true : false
    end
    # Russian
    def self.RU(zipcode)
      match = zipcode =~ /^([0-9]{6})$/
      match == 0 ? true : false
    end
    # Saudi Arabia
    def self.SA(zipcode)
      match = zipcode =~ /^([0-9]{5})$/
      match == 0 ? true : false
    end
    # Senegal
    def self.SN(zipcode)
      match = zipcode =~ /^([0-9]{5})$/
      match == 0 ? true : false
    end
    # Singapore
    def self.SG(zipcode)
      match = zipcode =~ /^([0-9]{5})$/
      match == 0 ? true : false
    end
    # Slovenia
    def self.SI(zipcode)
      match = zipcode =~ /^([0-9]{4})$/
      match == 0 ? true : false
    end
    # South Africa
    def self.ZA(zipcode)
      match = zipcode =~ /^([0-9]{4})$/
      match == 0 ? true : false
    end
    # Spain
    def self.ES(zipcode)
      match = zipcode =~ /^([0-9]{5})$/
      match == 0 ? true : false
    end
    # Sri Lanka
    def self.LK(zipcode)
      match = zipcode =~ /^([0-9]{5})$/
      match == 0 ? true : false
    end
    # Tajikistan
    def self.TJ(zipcode)
      match = zipcode =~ /^([0-9]{6})$/
      match == 0 ? true : false
    end
    # Thailand
    def self.TH(zipcode)
      match = zipcode =~ /^([0-9]{5})$/
      match == 0 ? true : false
    end
    # Tunisia
    def self.TN(zipcode)
      match = zipcode =~ /^([0-9]{4})$/
      match == 0 ? true : false
    end
    # Turkey
    def self.TR(zipcode)
      match = zipcode =~ /^([0-9]{5})$/
      match == 0 ? true : false
    end
    # Turkmenistan
    def self.TM(zipcode)
      match = zipcode =~ /^([0-9]{6})$/
      match == 0 ? true : false
    end
    # Ukraine
    def self.UA(zipcode)
      match = zipcode =~ /^([0-9]{5})$/
      match == 0 ? true : false
    end
    # United Stade
    def self.US(zipcode)
      match = zipcode =~ /^([0-9]{5})$|([0-9]{9})$|([0-9]{5}-[0-9]{4})$/
      match == 0 ? true : false
    end
    # Uzbekistan
    def self.UZ(zipcode)
      match = zipcode =~ /^([0-9]{6})$/
      match == 0 ? true : false
    end
    # Venezuela
    def self.VE(zipcode)
      match = zipcode =~ /^([0-9]{4})$/
      match == 0 ? true : false
    end
    # Zambia
    def self.ZM(zipcode)
      match = zipcode =~ /^([0-9]{5})$/
      match == 0 ? true : false
    end
  end
end
