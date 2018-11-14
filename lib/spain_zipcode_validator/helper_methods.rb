module ActiveModel
  module Validations
    module HelperMethods
      def validates_spain_zipcode(*attr_names)
        validates_with SpainZipcodeValidator, _merge_attributes(attr_names)
      end
    end
  end
end
