require 'spec_helper'
require 'fake_address/address'

# United States
describe ValidateZipcode do
  # Format [gsub and upcase]
  context "United States" do
    context "Format should be valid" do
      # Number
      it "02201-1020 / 022011020" do
        expect(ValidateZipcode::Validator.new("02201-1020", "US").valid?).to be_truthy
        expect(ValidateZipcode::Validator.new("022011020", "US").valid?).to be_truthy
      end

      # Code
      it "US / us" do
        expect(ValidateZipcode::Validator.new("02201-1020", "US").valid?).to be_truthy
        expect(ValidateZipcode::Validator.new("02201-1020", "us").valid?).to be_truthy
      end
    end

    context "should be valid with zip code" do
      # Code: 98109-4607
      # City: Seattle
      # State: Washington
      # Address: 400 Broad St
      # Place: Space Needle
      it "98109-4607" do
        expect(ValidateZipcode::Validator.new("98109-4607", "US").valid?).to be_truthy
      end

      # Code: 10118-0229
      # City: New York
      # State: New York
      # Address: 350 5th Ave
      # Place: Empire State Building
      it "10118-0229" do
        expect(ValidateZipcode::Validator.new("10118-0229", "US").valid?).to be_truthy
      end

      # Code: 90410
      # City: Santa Monica
      # State: California
      it "90410" do
        expect(ValidateZipcode::Validator.new("90410", "US").valid?).to be_truthy
      end

      # Code: 89101
      # City: Las Vegas
      # State: Nevada
      it "89101" do
        expect(ValidateZipcode::Validator.new("89101", "US").valid?).to be_truthy
      end

      # Zip code nil or empty
      it "empty" do
        expect(ValidateZipcode::Validator.new("", "US").valid?).to be_truthy
      end

      it "nil" do
        expect(ValidateZipcode::Validator.new(nil, "US").valid?).to be_truthy
      end
    end

    context "should be invalid with zip code" do
      # Wrong format in 5 numbers.
      it "9041" do
        expect(ValidateZipcode::Validator.new("9041", "US").valid?).to be_falsey
      end

      it "904107" do
        expect(ValidateZipcode::Validator.new("904107", "US").valid?).to be_falsey
      end

      # Wrong format in 9 numbers.
      it "98109-46077" do
        expect(ValidateZipcode::Validator.new("98109-46077", "US").valid?).to be_falsey
      end

      it "98109-460" do
        expect(ValidateZipcode::Validator.new("98109-460", "US").valid?).to be_falsey
      end

      # Another country
      it "30701-345" do
        expect(ValidateZipcode::Validator.new("30701-345", "US").valid?).to be_falsey
      end
    end
  end
end
