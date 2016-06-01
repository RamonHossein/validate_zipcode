require 'spec_helper'
require 'fake_address/address'

# Italy
describe ValidateZipcode do
  # Format [gsub and upcase]
  context "Italy" do
    context "Format should be valid" do
      # Code
      it "IT / it" do
        expect(ValidateZipcode::Validator.new("00144", "IT").valid?).to be_truthy
        expect(ValidateZipcode::Validator.new("00144", "it").valid?).to be_truthy
      end
    end

    context "should be valid with zip code" do
      # Code: 00144
      # City: Roma
      # State: Lazio
      # Region Name: Roma
      it "00144" do
        expect(ValidateZipcode::Validator.new("00144", "IT").valid?).to be_truthy
      end

      # Code: 20090
      # City: Milano
      # State: Segrate
      # Region Name: Segrate
      it "20090" do
        expect(ValidateZipcode::Validator.new("20090", "IT").valid?).to be_truthy
      end

      # Code: 90121
      # City: Palermo
      # State: Sicilia
      # Region Name: Palermo
      it "90121" do
        expect(ValidateZipcode::Validator.new("90121", "IT").valid?).to be_truthy
      end

      # Code: 30121
      # City: Venezia
      # State: Veneto
      # Region Name: Venezia
      it "30121" do
        expect(ValidateZipcode::Validator.new("30121", "IT").valid?).to be_truthy
      end

      # Zip code nil or empty
      it "empty" do
        expect(ValidateZipcode::Validator.new("", "IT").valid?).to be_truthy
      end

      it "nil" do
        expect(ValidateZipcode::Validator.new(nil, "IT").valid?).to be_truthy
      end
    end

    context "should be invalid with zip code" do
      # Wrong format in 5 numbers.
      it "901212" do
        expect(ValidateZipcode::Validator.new("901212", "IT").valid?).to be_falsey
      end

      it "9012" do
        expect(ValidateZipcode::Validator.new("9012", "IT").valid?).to be_falsey
      end

      # Another country
      it "90121-456" do
        expect(ValidateZipcode::Validator.new("90121-456", "IT").valid?).to be_falsey
      end
    end
  end
end
