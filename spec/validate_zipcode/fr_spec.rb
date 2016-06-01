require 'spec_helper'
require 'fake_address/address'

# France
describe ValidateZipcode do
  # Format [gsub and upcase]
  context "France" do
    context "Format should be valid" do
      # Code
      it "FR / fr" do
        expect(ValidateZipcode::Validator.new("75007", "FR").valid?).to be_truthy
        expect(ValidateZipcode::Validator.new("75007", "FR").valid?).to be_truthy
      end
    end

    context "should be valid with zip code" do
      # Code: 75007
      # City: Paris
      # State: Île-de-france
      # Region Name: Paris 07
      it "75007" do
        expect(ValidateZipcode::Validator.new("75007", "FR").valid?).to be_truthy
      end

      # Code: 33380
      # City: Gironde
      # State: Aquitaine
      # Region Name: Mios
      it "33380" do
        expect(ValidateZipcode::Validator.new("33380", "FR").valid?).to be_truthy
      end

      # Code: 06400
      # City: Alpes-maritimes
      # State: Provence-alpes-côte D'azur
      # Region Name: Cannes
      it "06400 " do
        expect(ValidateZipcode::Validator.new("06400", "FR").valid?).to be_truthy
      end

      # Code: 13008
      # City: Bouches-du-rhône
      # State: Provence-alpes-côte D'azur
      # Region Name: Marseille 08
      it "13008" do
        expect(ValidateZipcode::Validator.new("13008", "FR").valid?).to be_truthy
      end

      # Zip code nil or empty
      it "empty" do
        expect(ValidateZipcode::Validator.new("", "FR").valid?).to be_truthy
      end

      it "nil" do
        expect(ValidateZipcode::Validator.new(nil, "FR").valid?).to be_truthy
      end
    end

    context "should be invalid with zip code" do
      # Wrong format in 5 numbers.
      it "130083" do
        expect(ValidateZipcode::Validator.new("130083", "BR").valid?).to be_falsey
      end

      it "1300" do
        expect(ValidateZipcode::Validator.new("1300", "BR").valid?).to be_falsey
      end

      # Another country
      it "30701" do
        expect(ValidateZipcode::Validator.new("13008", "BR").valid?).to be_falsey
      end
    end
  end
end
