require 'spec_helper'
require 'fake_address/address'

# Spain
describe ValidateZipcode do
  # Format [gsub and upcase]
  context "France" do
    context "Format should be valid" do
      # Code
      it "ES / es" do
        expect(ValidateZipcode::Validator.new("28001", "ES").valid?).to be_truthy
        expect(ValidateZipcode::Validator.new("28001", "es").valid?).to be_truthy
      end
    end

    context "should be valid with zip code" do
      # Code: 28001
      # City: Madrid
      # State: Madrid
      # Region Name: Madrid
      it "28001" do
        expect(ValidateZipcode::Validator.new("28001", "ES").valid?).to be_truthy
      end

      # Code: 08398
      # City: Barcelona
      # State: Cataluna
      # Region Name: Santa Susanna
      it "08398" do
        expect(ValidateZipcode::Validator.new("08398", "ES").valid?).to be_truthy
      end

      # Code: 07800
      # City: Illes Balears
      # State: Baleares
      # Region Name: Can Cabrit (eivissa)
      it "07800" do
        expect(ValidateZipcode::Validator.new("07800", "ES").valid?).to be_truthy
      end

      # Code: 35017
      # City: Las Palmas
      # State: Canarias
      # Region Name: Dragonal Bajo
      it "35017" do
        expect(ValidateZipcode::Validator.new("35017", "ES").valid?).to be_truthy
      end

      # Zip code nil or empty
      it "empty" do
        expect(ValidateZipcode::Validator.new("", "ES").valid?).to be_truthy
      end

      it "nil" do
        expect(ValidateZipcode::Validator.new(nil, "ES").valid?).to be_truthy
      end
    end

    context "should be invalid with zip code" do
      # Wrong format in 5 numbers.
      it "280011" do
        expect(ValidateZipcode::Validator.new("280011", "ES").valid?).to be_falsey
      end

      it "2800" do
        expect(ValidateZipcode::Validator.new("2800", "ES").valid?).to be_falsey
      end

      # Another country
      it "30701-344" do
        expect(ValidateZipcode::Validator.new("30701-344", "ES").valid?).to be_falsey
      end
    end
  end
end
