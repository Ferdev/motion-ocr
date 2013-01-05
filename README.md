## MotionOCR

A [RubyMotion](http://www.rubymotion.com) wrapper for the OCR engine [Tesseract](https://code.google.com/p/tesseract-ocr/).

### Installation

First, install the gem:

    gem install motion-ocr

Then, reference it in your RubyMotion project Rakefile:

    require 'motion-ocr'

And that's it. Build your project and MotionOCR will be ready for action.

### Use

    ocr             = MotionOCR.new
    image_with_text = UIImage.imageNamed('phototest.gif').CGImage

    ocr.scan(image_with_text) # returns a String containing the detected text in the image
