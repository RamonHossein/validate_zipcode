require 'spec_helper'
require 'fake_address/address'

# Canada
describe ValidateZipcode do
  # Format [gsub and upcase]
  context "Canada" do
    context "Format should be valid" do
      # Number
      it "H3Z 2Y7 / H3Z2Y7 / H3Z-2Y7" do
        expect(ValidateZipcode::Validator.new("H3Z 2Y7", "CA").valid?).to be_truthy
        expect(ValidateZipcode::Validator.new("H3Z2Y7", "CA").valid?).to be_truthy
        expect(ValidateZipcode::Validator.new("H3Z-2Y7", "CA").valid?).to be_truthy
      end

      # Letter
      it "h3z 2y7 / h3z2y7 / h3z-2y7" do
        expect(ValidateZipcode::Validator.new("h3z 2y7", "CA").valid?).to be_truthy
        expect(ValidateZipcode::Validator.new("h3z2y7", "CA").valid?).to be_truthy
        expect(ValidateZipcode::Validator.new("h3z-2y7", "CA").valid?).to be_truthy
      end

      # Code
      it "CA / ca" do
        expect(ValidateZipcode::Validator.new("H3Z-2Y7", "CA").valid?).to be_truthy
        expect(ValidateZipcode::Validator.new("h3z-2y7", "ca").valid?).to be_truthy
      end
    end

    context "should be valid with zip code" do
      # Code: M5P 2N7
      # City: Toronto
      # State: Ontario
      # Address: 295 Forest Hill Rd
      it "M5P 2N7" do
        expect(ValidateZipcode::Validator.new("M5P 2N7", "CA").valid?).to be_truthy
      end

      # Code: h3r 1k2
      # City: Montreal
      # State: Quebec
      # Address: 48 Avenue Morrison
      it "h3r 1k2" do
        expect(ValidateZipcode::Validator.new("h3r 1k2", "CA").valid?).to be_truthy
      end

      # Code: V5Z-2B6
      # City: Vancouver
      # State: British Columbia
      # Address: 646 W 24th Ave
      it "V5Z-2B6" do
        expect(ValidateZipcode::Validator.new("V5Z-2B6", "CA").valid?).to be_truthy
      end

      # Code: R3B2Z1
      # City: Winnipeg
      # State: Manitoba
      # Address: 446 Kennedy St
      it "R3B2Z1" do
        expect(ValidateZipcode::Validator.new("R3B2Z1", "CA").valid?).to be_truthy
      end

      # Zip code nil or empty
      it "empty" do
        expect(ValidateZipcode::Validator.new("", "CA").valid?).to be_truthy
      end

      it "nil" do
        expect(ValidateZipcode::Validator.new(nil, "CA").valid?).to be_truthy
      end
    end

    context "should be invalid with zip code" do
      it "VV5Z 2B6" do
        expect(ValidateZipcode::Validator.new("VV5Z 2B6", "CA").valid?).to be_falsey
      end

      it "V55Z B6" do
        expect(ValidateZipcode::Validator.new("V55Z 2B6", "CA").valid?).to be_falsey
      end

      it "5V6 B6A" do
        expect(ValidateZipcode::Validator.new("5V6 B6A", "CA").valid?).to be_falsey
      end

      it "B6A" do
        expect(ValidateZipcode::Validator.new("B6A", "CA").valid?).to be_falsey
      end

      it "ABC DEF" do
        expect(ValidateZipcode::Validator.new("ABC DEF", "CA").valid?).to be_falsey
      end

      it "123 456" do
        expect(ValidateZipcode::Validator.new("123 456", "CA").valid?).to be_falsey
      end

      # Another country
      it "V5Z-2B6" do
        expect(ValidateZipcode::Validator.new("V5Z-2B6", "BR").valid?).to be_falsey
      end
    end
  end
end
