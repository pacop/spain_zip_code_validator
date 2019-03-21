require 'active_model'
require 'active_model/validator'

module SpainZipcodeValidator
  class Validator < ActiveModel::EachValidator
    def initialize(options)
      @province           = options.fetch(:province, nil)
      @province_attribute = options.fetch(:province_attribute, :province)
      @mode               = options.fetch(:mode, :all)

      @mode = :all unless %i[all name code].include?(@mode)

      super
    end

    def validate_each(record, attribute, value)
      province = @province || record.send(@province_attribute)
      options = {
        zipcode: value.to_s,
        mode: @mode,
        province: province
      }
      validator = SpainZipcodeValidator::Zipcode.new(options)

      unless validator.valid?
        record.errors.add(attribute, validator.error, message: I18n.t("errors.messages.#{validator.error}",
          value: value))
      end
    end
  end
end

ActiveModel::Validations::SpainZipcodeValidator = SpainZipcodeValidator::Validator
