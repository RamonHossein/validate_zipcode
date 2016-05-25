require 'spec_helper'
require 'fake_address/address'

describe ValidateZipcode do
  before :each do
    allow(I18n).to receive(:t).with("errors.messages.this_zip_code_is_invalid").and_return("This zip code is invalid")
  end

  # Format [gsub and upcase]
  context "Format should be valid" do
    it "02201-1020" do
      expect(ValidateZipcode::Validator.new("02201-1020", "US").valid?).to be_truthy
      expect(ValidateZipcode::Validator.new("02201-1020", "us").valid?).to be_truthy
    end

    it "022011020" do
      expect(ValidateZipcode::Validator.new("02201-1020", "US").valid?).to be_truthy
      expect(ValidateZipcode::Validator.new("02201-1020", "us").valid?).to be_truthy
    end
  end

  context "Message error" do
    it "pattern 'this zip code is invalid'" do
      address = AddressPattern.new(zipcode: "9041")

      address.valid?
      expect(address.errors[:zipcode]).to eq ["This zip code is invalid"]
    end

    it "customized 'new message'" do
      address = AddressCustomized.new(zipcode: "9041")
      address.valid?
      expect(address.errors[:zipcode]).to eq ["new message"]
    end
  end

  context "United States as a locale (US)" do
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
    end
  end

  context "Another country as a locale" do
    it "should be valid" do
      # France
      expect(ValidateZipcode::Validator.new("75008", "FR").valid?).to be_truthy
      # Italy
      expect(ValidateZipcode::Validator.new(" 30161", "IT").valid?).to be_truthy
      # Brazil
      expect(ValidateZipcode::Validator.new("13420-545", "BR").valid?).to be_truthy
    end
  end
end
