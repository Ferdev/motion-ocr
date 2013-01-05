## MotionOCR

A [RubyMotion](http://www.rubymotion.com) wrapper for the OCR engine, [Tesseract](https://code.google.com/p/tesseract-ocr/).

### Use

    ocr             = MotionOCR.new
    image_with_text = UIImage.imageNamed('phototest.gif').CGImage

    ocr.scan(image_with_text) # returns a String containing the detected text in the image


