module ValidateZipcode
  module Regex
    # Afghanistan
    def self.AF(zipcode)
      match = zipcode =~ /^([0-9]{4})$/
      match == 0 ? true : false
    end
    # Aland Islands
    def self.AX(zipcode)
      match = zipcode =~ /^([0-9]{5})$/
      match == 0 ? true : false
    end
    # Albania
    def self.AL(zipcode)
      match = zipcode =~ /^([0-9]{4})$/
      match == 0 ? true : false
    end
    # Algeria
    def self.DZ(zipcode)
      match = zipcode =~ /^([0-9]{5})$/
      match == 0 ? true : false
    end
    # American Samoa
    def self.AS(zipcode)
      match = zipcode =~ /^([0-9]{5})$|([0-9]{9})$|([0-9]{5}-[0-9]{4})$/
      match == 0 ? true : false
    end
    # Argentina
    def self.AR(zipcode)
      match = zipcode =~ /^([a-zA-Z][0-9]{4}[a-zA-Z]{3})$/
      match == 0 ? true : false
    end
    # Armenia
    def self.AM(zipcode)
      match = zipcode =~ /^([0-9]{4})$/
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
    # Azerbaijan
    def self.AZ(zipcode)
      match = zipcode =~ /^([0-9]{4})$/
      match == 0 ? true : false
    end
    # Bangladesh
    def self.BD(zipcode)
      match = zipcode =~ /^([0-9]{4})$/
      match == 0 ? true : false
    end
    # Belarus
    def self.BY(zipcode)
      match = zipcode =~ /^([0-9]{6})$/
      match == 0 ? true : false
    end
    # Belgium
    def self.BE(zipcode)
      match = zipcode =~ /^([0-9]{4})$/
      match == 0 ? true : false
    end
    # Bhutan
    def self.BT(zipcode)
      match = zipcode =~ /^([0-9]{5})$/
      match == 0 ? true : false
    end
    # Bolivia
    def self.BO(zipcode)
      match = zipcode =~ /^([0-9]{4})$/
      match == 0 ? true : false
    end
    # BA Bosnia and Herzegovina
    def self.BA(zipcode)
      match = zipcode =~ /^([0-9]{5})$/
      match == 0 ? true : false
    end
    # Brazil
    def self.BR(zipcode)
      match = zipcode =~ /^([0-9]{5}-[0-9]{3})$|([0-9]{8})$/
      match == 0 ? true : false
    end
    # Brunei Darussalam
    def self.BN(zipcode)
      match = zipcode =~ /^([a-zA-Z]{2}[0-9]{4})$/
      match == 0 ? true : false
    end
    # Bulgaria
    def self.BG(zipcode)
      match = zipcode =~ /^([0-9]{4})$/
      match == 0 ? true : false
    end
    # Cabo Verde
    def self.CV(zipcode)
      match = zipcode =~ /^([0-9]{4})$/
      match == 0 ? true : false
    end
    # Cambodia
    def self.KH(zipcode)
      match = zipcode =~ /^([0-9]{5})$/
      match == 0 ? true : fals
    end
    # Canada
    def self.CA(zipcode)
      match = zipcode =~ /^([a-zA-Z][0-9][a-zA-Z][ ][0-9][a-zA-Z][0-9])$|([a-zA-Z][0-9][a-zA-Z][0-9][a-zA-Z][0-9])$|([a-zA-Z][0-9][a-zA-Z]-[0-9][a-zA-Z][0-9])/
      match == 0 ? true : false
    end
    # Chile
    def self.CL(zipcode)
      match = zipcode =~ /^([0-9]{3}-[0-9]{4})$|([0-9]{7})$/
      match == 0 ? true : false
    end
    # China
    def self.CN(zipcode)
      match = zipcode =~ /^([0-9]{6})$/
      match == 0 ? true : false
    end
    # Christmas Island
    def self.CX(zipcode)
      match = zipcode =~ /^([0-9]{4})$/
      match == 0 ? true : false
    end
    # Cocos (Keeling) Islands
    def self.CC(zipcode)
      match = zipcode =~ /^([0-9]{4})$/
      match == 0 ? true : false
    end
    # Colombia
    def self.CO(zipcode)
      match = zipcode =~ /^([0-9]{6})$/
      match == 0 ? true : false
    end
    # Costa Rica
    def self.CR(zipcode)
      match = zipcode =~ /^([0-9]{5})$/
      match == 0 ? true : false
    end
    # Croatia
    def self.HR(zipcode)
      match = zipcode =~ /^([0-9]{5})$/
      match == 0 ? true : false
    end
    # Cuba
    def self.CU(zipcode)
      match = zipcode =~ /^([0-9]{5})$/
      match == 0 ? true : false
    end
    # Cyprus
    def self.CY(zipcode)
      match = zipcode =~ /^([0-9]{4})$/
      match == 0 ? true : false
    end
    # Czech Republic
    def self.CZ(zipcode)
      match = zipcode =~ /^([0-9]{3}[ ][0-9]{2})$|([0-9]{5})$/
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
    # Dominican Republic
    def self.DO(zipcode)
      match = zipcode =~ /^([0-9]{5})$/
      match == 0 ? true : false
    end
    # Ecuador
    def self.EC(zipcode)
      match = zipcode =~ /^([0-9]{6})$/
      match == 0 ? true : false
    end
    # Egypt
    def self.EG(zipcode)
      match = zipcode =~ /^([0-9]{5})$/
      match == 0 ? true : false
    end
    # El Salvador
    def self.SV(zipcode)
      match = zipcode =~ /^([0-9]{4})$/
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
    # French Guiana
    def self.GF(zipcode)
      match = zipcode =~ /^([0-9]{5})$/
      match == 0 ? true : false
    end
    # French Polynesia
    def self.PF(zipcode)
      match = zipcode =~ /^([0-9]{5})$/
      match == 0 ? true : false
    end
    # Georgia
    def self.GE(zipcode)
      match = zipcode =~ /^([0-9]{4})$/
      match == 0 ? true : false
    end
    # Greece
    def self.GR(zipcode)
      match = zipcode =~ /^([0-9]{3}[ ][0-9]{2})$|([0-9]{5})$|([0-9]{3}-[0-9]{2})$/
      match == 0 ? true : false
    end
    # Greenland
    def self.GL(zipcode)
      match = zipcode =~ /^([0-9]{4})$/
      match == 0 ? true : false
    end
    # Guadeloupe
    def self.GP(zipcode)
      match = zipcode =~ /^([0-9]{5})$/
      match == 0 ? true : false
    end
    # Guatemala
    def self.GT(zipcode)
      match = zipcode =~ /^([0-9]{5})$/
      match == 0 ? true : false
    end
    # Guinea-Bissau
    def self.GW(zipcode)
      match = zipcode =~ /^([0-9]{4})$/
      match == 0 ? true : false
    end
    # Haiti
    def self.HT(zipcode)
      match = zipcode =~ /^([hH][tT][0-9]{4})$|([0-9]{4})$/
      match == 0 ? true : false
    end
    # Heard Island and McDonald Islands
    def self.HM(zipcode)
      match = zipcode =~ /^([0-9]{4})$/
      match == 0 ? true : false
    end
    # Holy See (Vatican)
    def self.VA(zipcode)
      match = zipcode =~ /^([0-9]{5})$/
      match == 0 ? true : false
    end
    # Honduras
    def self.HN(zipcode)
      match = zipcode =~ /^([a-zA-Z]{2}[0-9]{4})$/
      match == 0 ? true : false
    end
    # Hungary
    def self.HU(zipcode)
      match = zipcode =~ /^([0-9]{4})$/
      match == 0 ? true : false
    end
    # Iceland
    def self.IS(zipcode)
      match = zipcode =~ /^([0-9]{3})$/
      match == 0 ? true : false
    end
    # India
    def self.IN(zipcode)
      match = zipcode =~ /^([0-9]{6})$/
      match == 0 ? true : false
    end
    # Indonesia
    def self.ID(zipcode)
      match = zipcode =~ /^([0-9]{5})$/
      match == 0 ? true : false
    end
    # Iran
    def self.IR(zipcode)
      match = zipcode =~ /^([0-9]{10})$/
      match == 0 ? true : false
    end
    # Iraq
    def self.IQ(zipcode)
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
    # Jordan
    def self.JO(zipcode)
      match = zipcode =~ /^([0-9]{5})$/
      match == 0 ? true : false
    end
    # Kazakhstan
    def self.KZ(zipcode)
      match = zipcode =~ /^([0-9]{6})$/
      match == 0 ? true : false
    end
    # Kenya
    def self.KE(zipcode)
      match = zipcode =~ /^([0-9]{5})$/
      match == 0 ? true : false
    end
    # KR - Republic of Korea
    def self.KR(zipcode)
      match = zipcode =~ /^([0-9]{5})$/
      match == 0 ? true : false
    end
    # Kuwait
    def self.KW(zipcode)
      match = zipcode =~ /^([0-9]{5})$/
      match == 0 ? true : false
    end
    # Kyrgyzstan
    def self.KG(zipcode)
      match = zipcode =~ /^([0-9]{6})$/
      match == 0 ? true : false
    end
    # Laos
    def self.LA(zipcode)
      match = zipcode =~ /^([0-9]{5})$/
      match == 0 ? true : false
    end
    # Latvia
    def self.LV(zipcode)
      match = zipcode =~ /^([0-9]{4})$/
      match == 0 ? true : false
    end
    # Lebanon
    def self.LB(zipcode)
      match = zipcode =~ /^([0-9]{4}[ ][0-9]{4})$|([0-9]{4})$/
      match == 0 ? true : false
    end
    # Lesotho
    def self.LS(zipcode)
      match = zipcode =~ /^([0-9]{3})$/
      match == 0 ? true : false
    end
    # Liberia
    def self.LR(zipcode)
      match = zipcode =~ /^([0-9]{4})$/
      match == 0 ? true : false
    end
    # Liechtenstein
    def self.LI(zipcode)
      match = zipcode =~ /^([0-9]{4})$/
      match == 0 ? true : false
    end
    # Lithuania
    def self.LT(zipcode)
      match = zipcode =~ /^([0-9]{5})$/
      match == 0 ? true : false
    end
    # Luxembourg
    def self.LU(zipcode)
      match = zipcode =~ /^([0-9]{4})$/
      match == 0 ? true : false
    end
    # Macedonia
    def self.MK(zipcode)
      match = zipcode =~ /^([0-9]{4})$/
      match == 0 ? true : false
    end
    # Madagascar
    def self.MG(zipcode)
      match = zipcode =~ /^([0-9]{3})$/
      match == 0 ? true : false
    end
    #  Malaysia
    def self.MY(zipcode)
      match = zipcode =~ /^([0-9]{5})$/
      match == 0 ? true : false
    end
    # Maldives
    def self.MV(zipcode)
      match = zipcode =~ /^([0-9]{5})$/
      match == 0 ? true : false
    end
    # Malta
    def self.MT(zipcode)
      match = zipcode =~ /^([a-zA-Z]{3}[ ][0-9]{4})$|([a-zA-Z]{3}[0-9]{4})$/
      match == 0 ? true : false
    end
    # Marshall Islands
    def self.MH(zipcode)
      match = zipcode =~ /^([0-9]{5})$/
      match == 0 ? true : false
    end
    # Martinique
    def self.MQ(zipcode)
      match = zipcode =~ /^([0-9]{5})$/
      match == 0 ? true : false
    end
    # Mauritius
    def self.MU(zipcode)
      match = zipcode =~ /^([0-9]{5})$/
      match == 0 ? true : false
    end
    # Mayotte
    def self.YT(zipcode)
      match = zipcode =~ /^([0-9]{5})$/
      match == 0 ? true : false
    end
    # Mexico
    def self.MX(zipcode)
      match = zipcode =~ /^([0-9]{5})$/
      match == 0 ? true : false
    end
    # Federated States of Micronesia
    def self.FM(zipcode)
      match = zipcode =~ /^([0-9]{5})$/
      match == 0 ? true : false
    end
    # Republic of Moldova
    def self.MD(zipcode)
      match = zipcode =~ /^([0-9]{4})$/
      match == 0 ? true : false
    end
    # Monaco
    def self.MC(zipcode)
      match = zipcode =~ /^([0-9]{5})$/
      match == 0 ? true : false
    end
    # Mongolia
    def self.MN(zipcode)
      match = zipcode =~ /^([0-9]{5})$/
      match == 0 ? true : false
    end
    # Montenegro
    def self.CS(zipcode)
      match = zipcode =~ /^([0-9]{5})$/
      match == 0 ? true : false
    end
    # Montserrat
    def self.MS(zipcode)
      match = zipcode =~ /^([mM][sS][rR][0-9]{4})$|([0-9]{4})$/
      match == 0 ? true : false
    end
    # Morocco
    def self.MA(zipcode)
      match = zipcode =~ /^([0-9]{5})$/
      match == 0 ? true : false
    end
    # Mozambique
    def self.MZ(zipcode)
      match = zipcode =~ /^([0-9]{4})$/
      match == 0 ? true : false
    end
    # Myanmar
    def self.MM(zipcode)
      match = zipcode =~ /^([0-9]{5})$/
      match == 0 ? true : false
    end
    # Namibia
    def self.NA(zipcode)
      match = zipcode =~ /^([0-9]{5})$/
      match == 0 ? true : false
    end
    # Nepal
    def self.NP(zipcode)
      match = zipcode =~ /^([0-9]{5})$/
      match == 0 ? true : false
    end
    # Niger
    def self.NE(zipcode)
      match = zipcode =~ /^([0-9]{4})$/
      match == 0 ? true : false
    end
    # New Zealand (including the Ross dependency)
    def self.NZ(zipcode)
      match = zipcode =~ /^([0-9]{4})$/
      match == 0 ? true : false
    end
    # Norway
    def self.NO(zipcode)
      match = zipcode =~ /^([0-9]{4})$/
      match == 0 ? true : false
    end
    # Paraguay
    def self.PY(zipcode)
      match = zipcode =~ /^([0-9]{4})$/
      match == 0 ? true : false
    end
    # Peru
    def self.PE(zipcode)
      match = zipcode =~ /^([0-9]{5})$/
      match == 0 ? true : false
    end
    # Philippines
    def self.PH(zipcode)
      match = zipcode =~ /^([0-9]{4})$/
      match == 0 ? true : false
    end
    # Portugal
    def self.PT(zipcode)
      match = zipcode =~ /^([0-9]{4}-[0-9]{3})$|([0-9]{7})$/
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
      match = zipcode =~ /^([0-9]{6})$/
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
    # Sudan
    def self.SD(zipcode)
      match = zipcode =~ /^([0-9]{5})$/
      match == 0 ? true : false
    end
    # Svalbard and Jan Mayen Island
    def self.SJ(zipcode)
      match = zipcode =~ /^([0-9]{4})$/
      match == 0 ? true : false
    end
    # Switzerland
    def self.CH(zipcode)
      match = zipcode =~ /^([0-9]{4})$/
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
    # Trinidad and Tobago
    def self.TT(zipcode)
      match = zipcode =~ /^([0-9]{6})$/
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
    # Viet Nam
    def self.VN(zipcode)
      match = zipcode =~ /^([0-9]{6})$/
      match == 0 ? true : false
    end
    # Virgin Islands of the United States of America
    def self.VI(zipcode)
      match = zipcode =~ /^([0-9]{5})$/
      match == 0 ? true : false
    end
    # Zambia
    def self.ZM(zipcode)
      match = zipcode =~ /^([0-9]{5})$/
      match == 0 ? true : false
    end
  end
end
