require 'spec_helper'
require 'fake_address/address'

# Haiti
describe ValidateZipcode do
  # Format [gsub and upcase]
  context "Haiti" do
    context "Format should be valid" do
      # Number
      it "HT6120 / 6120" do
        expect(ValidateZipcode::Validator.new("HT6120", "HT").valid?).to be_truthy
        expect(ValidateZipcode::Validator.new("6120", "HT").valid?).to be_truthy
      end

      # Letter
      it "HT6120 / ht6120" do
        expect(ValidateZipcode::Validator.new("HT6120", "HT").valid?).to be_truthy
        expect(ValidateZipcode::Validator.new("ht6120", "HT").valid?).to be_truthy
      end

      # Code
      it "CA / ca" do
        expect(ValidateZipcode::Validator.new("HT6120", "HT").valid?).to be_truthy
        expect(ValidateZipcode::Validator.new("HT6120", "ht").valid?).to be_truthy
      end
    end

    context "should be valid with zip code" do
      # Code: 1110
      # Town: Cap-Haïtien
      # Administrative region: Nord
      # Address: Rue B, Lime Bar
      it "1110" do
        expect(ValidateZipcode::Validator.new("1110", "HT").valid?).to be_truthy
      end

      # Code: HT1710
      # Town: Plaisance
      # Administrative region: Nord
      # Address: 177, Nationale 25, Port Salut, 25
      it "HT1710" do
        expect(ValidateZipcode::Validator.new("HT1710", "HT").valid?).to be_truthy
      end

      # Code: 6110
      # City: Port-Au-Prince
      # Administrative region: Ouest
      # Address: Rue Martelly Seïde
      it "6110" do
        expect(ValidateZipcode::Validator.new("6110", "HT").valid?).to be_truthy
      end

      # Code: HT7410
      # City: Miragoâne
      # Administrative region: Nippes
      # Address: Rue Goin 1
      it "HT7410" do
        expect(ValidateZipcode::Validator.new("HT7410", "HT").valid?).to be_truthy
      end

      # Zip code nil or empty
      it "empty" do
        expect(ValidateZipcode::Validator.new("", "HT").valid?).to be_truthy
      end

      it "nil" do
        expect(ValidateZipcode::Validator.new(nil, "HT").valid?).to be_truthy
      end
    end

    context "should be invalid with zip code" do
      it "AB7410" do
        expect(ValidateZipcode::Validator.new("AB7410", "HT").valid?).to be_falsey
      end

      it "HT 7410" do
        expect(ValidateZipcode::Validator.new("HT 7410", "HT").valid?).to be_falsey
      end

      it "HT74105" do
        expect(ValidateZipcode::Validator.new("HT74105", "HT").valid?).to be_falsey
      end

      it "HT741" do
        expect(ValidateZipcode::Validator.new("HT741", "HT").valid?).to be_falsey
      end

      it "HTABCD" do
        expect(ValidateZipcode::Validator.new("HTABCD", "HT").valid?).to be_falsey
      end

      it "123456" do
        expect(ValidateZipcode::Validator.new("123456", "HT").valid?).to be_falsey
      end

      it "12AB56" do
        expect(ValidateZipcode::Validator.new("12AB56", "HT").valid?).to be_falsey
      end

      # Another country
      it "Y5900FNF" do
        expect(ValidateZipcode::Validator.new("HT6129", "BR").valid?).to be_falsey
      end
    end
  end
end
