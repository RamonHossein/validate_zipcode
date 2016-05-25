class ZipcodeValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless ValidateZipcode::Validator.new(value, options[:country]).valid?
      record.errors[attribute] << (options[:message] || I18n.t("errors.messages.this_zip_code_is_invalid"))
    end
  end
end
