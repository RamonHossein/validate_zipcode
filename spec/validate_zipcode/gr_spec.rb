require 'spec_helper'
require 'fake_address/address'

# Greece
describe ValidateZipcode do
  # Format [gsub and upcase]
  context "Greece" do
    context "Format should be valid" do
      # Number
      it "151 24 / 15124" do
        expect(ValidateZipcode::Validator.new("151 24", "GR").valid?).to be_truthy
        expect(ValidateZipcode::Validator.new("15124", "GR").valid?).to be_truthy
      end

      # Code
      it "GR / gr" do
        expect(ValidateZipcode::Validator.new("151 24", "GR").valid?).to be_truthy
        expect(ValidateZipcode::Validator.new("15124", "gr").valid?).to be_truthy
      end
    end

    context "should be valid with zip code" do
      # Code: 10431
      # City: Athens
      # Prefecture: Attica
      # Address: 3 Septemvriou Street
      it "10431" do
        expect(ValidateZipcode::Validator.new("10431", "GR").valid?).to be_truthy
      end

      # Code: 114 76
      # City: Athens
      # Prefecture: Attica
      # Address: Agapinou Tellou Street
      it "114 76" do
        expect(ValidateZipcode::Validator.new("114 76", "GR").valid?).to be_truthy
      end

      # Code: 85100
      # City: Rhodes
      # Prefecture: Dodecanese
      # Address: 25 Martiou Street
      it "85100" do
        expect(ValidateZipcode::Validator.new("85100", "GR").valid?).to be_truthy
      end

      # Code: 713 05
      # City: Heraklion Crete
      # Prefecture: Heraklion
      # Address: 11 Oktovriou 1944 Square
      it "713 05" do
        expect(ValidateZipcode::Validator.new("713 05", "GR").valid?).to be_truthy
      end

      # Zip code nil or empty
      it "empty" do
        expect(ValidateZipcode::Validator.new("", "GR").valid?).to be_truthy
      end

      it "nil" do
        expect(ValidateZipcode::Validator.new(nil, "GR").valid?).to be_truthy
      end
    end

    context "should be invalid with zip code" do
      # Wrong format in 9 numbers.
      it "713051" do
        expect(ValidateZipcode::Validator.new("713051", "GR").valid?).to be_falsey
      end

      it "7130" do
        expect(ValidateZipcode::Validator.new("7130", "GR").valid?).to be_falsey
      end

      it "71 305" do
        expect(ValidateZipcode::Validator.new("7130", "GR").valid?).to be_falsey
      end

      it "7130 5" do
        expect(ValidateZipcode::Validator.new("7130", "GR").valid?).to be_falsey
      end

      it "713-05" do
        expect(ValidateZipcode::Validator.new("7130", "GR").valid?).to be_falsey
      end

      # Another country
      it "3070112" do
        expect(ValidateZipcode::Validator.new("3070112", "GR").valid?).to be_falsey
      end
    end
  end
end
