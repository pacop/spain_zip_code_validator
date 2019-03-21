module SpainZipcodeValidator
  class Zipcode
    attr_reader :error

    FORMAT_ZIPCODE = /\A([0-9]{5})\Z/.freeze

    def initialize(args={})
      @zipcode = args.fetch(:zipcode)
      @province = args.fetch(:province)
      @mode = args.fetch(:mode)
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

      if @province.present? && send("mode_#{@mode}", province_by_zipcode)
        @error = :invalid_zipcode_province
        return false
      end

      true
    end

    alias validate valid?

    protected

    def mode_code(province_by_zipcode)
      province_by_zipcode[:code] != @province
    end

    def mode_name(province_by_zipcode)
      !province_by_zipcode[:unofficial_names].include?(@province)
    end

    def mode_all(province_by_zipcode)
      !(province_by_zipcode[:unofficial_names].include?(@province) ||
        province_by_zipcode[:code] == @province)
    end
  end
end
