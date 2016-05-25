class AddressPattern
  include ActiveModel::Validations

  attr_accessor :zipcode

  validates :zipcode, zipcode: {country: "US"}

  def initialize(attributes = {})
    attributes.each do |key, value |
      instance_variable_set("@#{key}", value)
    end
  end
end


class AddressCustomized
  include ActiveModel::Validations

  attr_accessor :zipcode

  validates :zipcode, zipcode: {country: "US", message: "new message"}

  def initialize(attributes = {})
    attributes.each do |key, value |
      instance_variable_set("@#{key}", value)
    end
  end
end
