require 'spec_helper'
require 'fake_address/address'

# Generic Tests
describe ValidateZipcode do
  before :each do
    allow(I18n).to receive(:t).with("errors.messages.this_zip_code_is_invalid").and_return("This zip code is invalid")
  end

  # Menssages
  context "Generic Validations" do
    context "Menssage error" do
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

    context "Zip code unrecognized" do
      it "should be valid" do
        # Narnia
        expect(ValidateZipcode::Validator.new("75008", "NA").valid?).to be_truthy
        # Avalon
        expect(ValidateZipcode::Validator.new("30161", "AV").valid?).to be_truthy
        # Winterfell
        expect(ValidateZipcode::Validator.new("30161", "WI").valid?).to be_truthy
      end
    end
  end
end
