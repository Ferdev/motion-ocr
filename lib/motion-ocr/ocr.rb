module Motion
  class OCR
    def initialize(options={})
      options[:language] ||= "eng"
      @motion_ocr = MotionOCR.alloc.initWithOptions stringify(options)
    end

    def scan(image)
      @motion_ocr.scan image
    end

    private

    def stringify(hash)
      stringified = hash.flatten.map(&:to_s)
      Hash[*stringified]
    end
  end
end
