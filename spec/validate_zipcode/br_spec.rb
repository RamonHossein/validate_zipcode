require 'spec_helper'
require 'fake_address/address'

# Brazil
describe ValidateZipcode do
  # Format [gsub and upcase]
  context "Brazil" do
    context "Format should be valid" do
      # Number
      it "35001-345 / 35001345" do
        expect(ValidateZipcode::Validator.new("35001-345", "BR").valid?).to be_truthy
        expect(ValidateZipcode::Validator.new("35001345", "BR").valid?).to be_truthy
      end

      # Code
      it "BR / br" do
        expect(ValidateZipcode::Validator.new("35001-345", "BR").valid?).to be_truthy
        expect(ValidateZipcode::Validator.new("35001-345", "br").valid?).to be_truthy
      end
    end

    context "should be valid with zip code" do
      # Code: 01120-010
      # City: São Paulo
      # State: São Paulo
      # Neighborhood: Bom Retiro
      # Address: Praça da Luz, s/n
      # Place: Praça da Luz
      it "01120-010" do
        expect(ValidateZipcode::Validator.new("01120-010", "BR").valid?).to be_truthy
      end

      # Code: 36305-142
      # City: São João Del Rei/
      # State: Minas Gerais
      # Neighborhood: Matozinhos
      # Address: Praça Senhor Bom Jesus de Matozinhos, 386
      # Place: Basílica do Senhor Bom Jesus de Matosinhos
      it "36305-142" do
        expect(ValidateZipcode::Validator.new("36305-142", "BR").valid?).to be_truthy
      end

      # Code: 20271-000
      # City: Rio de Janeiro
      # State: Rio de Janeiro
      # Neighborhood: Maracanã
      # Address: Rua Comandante Cordeiro de Farias
      it "20271-000" do
        expect(ValidateZipcode::Validator.new("20271-000", "BR").valid?).to be_truthy
      end

      # Code: 40415-000
      # City:   Salvador
      # State: Bahia
      # Neighborhood: Bonfim
      # Address: Avenida Bonfim
      it "40415-000" do
        expect(ValidateZipcode::Validator.new("40415-000", "BR").valid?).to be_truthy
      end

      # Zip code nil or empty
      it "empty" do
        expect(ValidateZipcode::Validator.new("", "BR").valid?).to be_truthy
      end

      it "nil" do
        expect(ValidateZipcode::Validator.new(nil, "BR").valid?).to be_truthy
      end
    end

    context "should be invalid with zip code" do
      # Wrong format in 9 numbers.
      it "30701-34" do
        expect(ValidateZipcode::Validator.new("30701-34", "BR").valid?).to be_falsey
      end

      it "30701-3457" do
        expect(ValidateZipcode::Validator.new("30701-3457", "BR").valid?).to be_falsey
      end

      # Another country
      it "30701" do
        expect(ValidateZipcode::Validator.new("30701", "BR").valid?).to be_falsey
      end
    end
  end
end
