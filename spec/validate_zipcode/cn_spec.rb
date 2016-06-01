require 'spec_helper'
require 'fake_address/address'

# China
describe ValidateZipcode do
  # Format [gsub and upcase]
  context "Germany or Deutsch" do
    context "Format should be valid" do
      # Code
      it "CN / cn" do
        expect(ValidateZipcode::Validator.new("200082", "CN").valid?).to be_truthy
        expect(ValidateZipcode::Validator.new("200082", "cn").valid?).to be_truthy
      end
    end

    context "should be valid with zip code" do
      # Code: 200082
      # City: Shanghai
      # District: Changning
      it "200082" do
        expect(ValidateZipcode::Validator.new("200082", "CN").valid?).to be_truthy
      end

      # Code: 101149
      # City: Beijing
      # District: Tongzhou
      it "101149" do
        expect(ValidateZipcode::Validator.new("101149", "CN").valid?).to be_truthy
      end

      # Code: 061001
      # City: Cangzhou
      # Province: Hebei
      it "061001" do
        expect(ValidateZipcode::Validator.new("061001", "CN").valid?).to be_truthy
      end

      # Code: 476000
      # City: Shangqiu
      # Province: Henan
      it "476000" do
        expect(ValidateZipcode::Validator.new("476000", "CN").valid?).to be_truthy
      end

      # Zip code nil or empty
      it "empty" do
        expect(ValidateZipcode::Validator.new("", "CN").valid?).to be_truthy
      end

      it "nil" do
        expect(ValidateZipcode::Validator.new(nil, "CN").valid?).to be_truthy
      end
    end

    context "should be invalid with zip code" do
      # Wrong format in 5 numbers.
      it "2000829" do
        expect(ValidateZipcode::Validator.new("2000829", "CN").valid?).to be_falsey
      end

      it "20008" do
        expect(ValidateZipcode::Validator.new("20008", "CN").valid?).to be_falsey
      end

      # Another country
      it "90121" do
        expect(ValidateZipcode::Validator.new("90121-123", "CN").valid?).to be_falsey
      end
    end
  end
end
