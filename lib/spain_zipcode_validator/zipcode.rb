module SpainZipcodeValidator
  class Zipcode
    attr_reader :error

    FORMAT_ZIPCODE = /\A([0-9]{5})\Z/.freeze

    def initialize(args = {})
      @zipcode = args.fetch(:zipcode)
      @province = args.fetch(:province)
      @error = nil
    end

    def valid?
      unless @zipcode.match?(FORMAT_ZIPCODE)
        @error = :invalid_zipcode
        return false
      end

      province_by_zipcode = Codes::PROVINCES.find do |province|
        @zipcode.start_with?(province[:code])
      end

      if province_by_zipcode.blank?
        @error = :invalid_zipcode
        return false
      end

      if @province.present? && !(province_by_zipcode[:unofficial_names].include?(@province) ||
                                 province_by_zipcode[:code].include?(@province))
        @error = :invalid_zipcode_province
        return false
      end

      true
    end

    alias_method :validate, :valid?
  end
end
