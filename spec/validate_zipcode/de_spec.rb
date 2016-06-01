require 'spec_helper'
require 'fake_address/address'

# Germany or Deutsch
describe ValidateZipcode do
  # Format [gsub and upcase]
  context "Germany or Deutsch" do
    context "Format should be valid" do
      # Code
      it "DE / de" do
        expect(ValidateZipcode::Validator.new("81545", "DE").valid?).to be_truthy
        expect(ValidateZipcode::Validator.new("81545", "de").valid?).to be_truthy
      end
    end

    context "should be valid with zip code" do
      # Code: 14199
      # City: Oberbayern
      # State: Bayern
      # Region Name: München
      it "81545" do
        expect(ValidateZipcode::Validator.new("81545", "DE").valid?).to be_truthy
      end

      # Code: 44137
      # City: Reg.-bez. Arnsberg
      # State: Nordrhein-westfalen
      # Region Name: Dortmund
      it "44137" do
        expect(ValidateZipcode::Validator.new("44137", "DE").valid?).to be_truthy
      end

      # Code: 60311
      # City: Reg.-bez. Darmstadt
      # State: Hessen
      # Region Name: Frankfurt Am Main
      it "60311" do
        expect(ValidateZipcode::Validator.new("60311", "DE").valid?).to be_truthy
      end

      # Code: 89231
      # City: Schwaben
      # State: Bayern
      # Region Name: Neu-ulm
      it "89231" do
        expect(ValidateZipcode::Validator.new("89231", "DE").valid?).to be_truthy
      end

      # Zip code nil or empty
      it "empty" do
        expect(ValidateZipcode::Validator.new("", "DE").valid?).to be_truthy
      end

      it "nil" do
        expect(ValidateZipcode::Validator.new(nil, "DE").valid?).to be_truthy
      end
    end

    context "should be invalid with zip code" do
      # Wrong format in 5 numbers.
      it "815452" do
        expect(ValidateZipcode::Validator.new("815452", "DE").valid?).to be_falsey
      end

      it "8154" do
        expect(ValidateZipcode::Validator.new("8154", "DE").valid?).to be_falsey
      end

      # Another country
      it "90121-456" do
        expect(ValidateZipcode::Validator.new("90121-456", "DE").valid?).to be_falsey
      end
    end
  end
end
