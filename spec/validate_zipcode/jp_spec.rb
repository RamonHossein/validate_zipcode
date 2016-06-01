require 'spec_helper'
require 'fake_address/address'

# Japan
describe ValidateZipcode do
  # Format [gsub and upcase]
  context "Japan" do
    context "Format should be valid" do
      # Number
      it "951-8073 / 9518073" do
        expect(ValidateZipcode::Validator.new("951-8073", "JP").valid?).to be_truthy
        expect(ValidateZipcode::Validator.new("9518073", "JP").valid?).to be_truthy
      end

      # Code
      it "JP / jp" do
        expect(ValidateZipcode::Validator.new("951-8073", "JP").valid?).to be_truthy
        expect(ValidateZipcode::Validator.new("951-8073", "jp").valid?).to be_truthy
      end
    end

    context "should be valid with zip code" do
      # Code: 951-8073
      # City: Niigatashi
      # State: Niigataken
      # Region Name: Kotobukichou
      it "951-8073" do
        expect(ValidateZipcode::Validator.new("951-8073", "JP").valid?).to be_truthy
      end

      # Code: 162-0803
      # City: Shinjukuku
      # State: Toukyouto
      # Region Name: Akagishitamachi
      it "162-0803" do
        expect(ValidateZipcode::Validator.new("162-0803", "JP").valid?).to be_truthy
      end

      # Code: 100-0001
      # City: Chiyodaku
      # State: Toukyouto
      # Region Name: Chiyoda
      it "100-0001" do
        expect(ValidateZipcode::Validator.new("100-0001", "JP").valid?).to be_truthy
      end

      # Code: 730-0036
      # City: Hiroshimashinakaku
      # State: Hiroshimaken
      # Region Name: Fukuromachi
      it "730-0036" do
        expect(ValidateZipcode::Validator.new("730-0036", "JP").valid?).to be_truthy
      end

      # Zip code nil or empty
      it "empty" do
        expect(ValidateZipcode::Validator.new("", "JP").valid?).to be_truthy
      end

      it "nil" do
        expect(ValidateZipcode::Validator.new(nil, "JP").valid?).to be_truthy
      end
    end

    context "should be invalid with zip code" do
      # Wrong format in 7 numbers.
      it "30701-34" do
        expect(ValidateZipcode::Validator.new("30701-34", "JP").valid?).to be_falsey
      end

      it "30701-3457" do
        expect(ValidateZipcode::Validator.new("30701-3457", "JP").valid?).to be_falsey
      end

      # Another country
      it "30701" do
        expect(ValidateZipcode::Validator.new("30701", "JP").valid?).to be_falsey
      end
    end
  end
end
