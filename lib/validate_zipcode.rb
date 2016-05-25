require "active_model"
require "validate_zipcode/version"
require "validate_zipcode/zipcode_validator"
require "validate_zipcode/regex"

module ValidateZipcode
  autoload :Validator, "validate_zipcode/validator"
end
