require 'spec_helper'
require 'fake_address/address'

# Argentina
describe ValidateZipcode do
  # Format [gsub and upcase]
  context "Argentina" do
    context "Format should be valid" do
      # Number
      it "Y5900FNF" do
        expect(ValidateZipcode::Validator.new("Y5900FNF", "AR").valid?).to be_truthy
      end

      # Letter
      it "Y5900FNF / y5900fnf" do
        expect(ValidateZipcode::Validator.new("Y5900FNF", "AR").valid?).to be_truthy
        expect(ValidateZipcode::Validator.new("y5900fnf", "AR").valid?).to be_truthy
      end

      # Code
      it "AR / ar" do
        expect(ValidateZipcode::Validator.new("Y5900FNF", "AR").valid?).to be_truthy
        expect(ValidateZipcode::Validator.new("Y5900FNF", "ar").valid?).to be_truthy
      end
    end

    context "should be valid with zip code" do
      # Code: Y5900FNF
      # City: Villa María
      # Province: Córdoba
      # Address: San Martin 230
      it "Y5900FNF" do
        expect(ValidateZipcode::Validator.new("Y5900FNF", "AR").valid?).to be_truthy
      end

      # Code: X5187YAB
      # City: San Clemente del Tuyú
      # Province: Buenos Aires
      # Address: Escuela Rural 45
      it "X5187YAB" do
        expect(ValidateZipcode::Validator.new("X5187YAB", "AR").valid?).to be_truthy
      end

      # Code: C1000ZAA
      # City: Buenos Aires
      # Province: Autonomous city
      # Address: Piso 3 Oficina 311 BIS
      it "C1000ZAA" do
        expect(ValidateZipcode::Validator.new("C1000ZAA", "AR").valid?).to be_truthy
      end

      # Code: C1000WAE
      # City: Buenos Aires
      # Province: Autonomous city
      # Address: Casilla de Correos 432
      it "C1000WAE" do
        expect(ValidateZipcode::Validator.new("C1000WAE", "AR").valid?).to be_truthy
      end

      # Zip code nil or empty
      it "empty" do
        expect(ValidateZipcode::Validator.new("", "AR").valid?).to be_truthy
      end

      it "nil" do
        expect(ValidateZipcode::Validator.new(nil, "AR").valid?).to be_truthy
      end
    end

    context "should be invalid with zip code" do
      it "Y5900FNFN" do
        expect(ValidateZipcode::Validator.new("Y5900FNFN", "AR").valid?).to be_falsey
      end

      it "Y5900 FNF" do
        expect(ValidateZipcode::Validator.new("Y5900 FNF", "AR").valid?).to be_falsey
      end

      it "3ABCD456" do
        expect(ValidateZipcode::Validator.new("3ABCD456", "AR").valid?).to be_falsey
      end

      it "Y5900" do
        expect(ValidateZipcode::Validator.new("Y5900", "AR").valid?).to be_falsey
      end

      it "YABCDFNF" do
        expect(ValidateZipcode::Validator.new("YABCDFNF", "AR").valid?).to be_falsey
      end

      it "35900333" do
        expect(ValidateZipcode::Validator.new("35900333", "AR").valid?).to be_falsey
      end

      # Another country
      it "Y5900FNF" do
        expect(ValidateZipcode::Validator.new("Y5900FNF", "BR").valid?).to be_falsey
      end
    end
  end
end
