## MotionOCR

A [RubyMotion](http://www.rubymotion.com) wrapper for the OCR engine [Tesseract](https://code.google.com/p/tesseract-ocr/).

### Installation

First, install the gem:

    gem install motion-ocr

Then, reference it in your RubyMotion project Rakefile:

    # -*- coding: utf-8 -*-
    $:.unshift("/Library/RubyMotion/lib")
    require 'motion/project/template/ios'

    require 'motion-ocr'

And that's it. Build your project and MotionOCR will be ready for action.

### Use

    ocr             = Motion::OCR.new
    image_with_text = UIImage.imageNamed('phototest.gif').CGImage

    ocr.scan(image_with_text) # returns a String containing the detected text in the image

### Options

You use your own Tesseract language file
(available at https://code.google.com/p/tesseract-ocr/downloads/list).

Put the language file (e.g., `spa.traineddata`) into your app's
`ressources/tessdata` directory.
Then pass the language to MotionOCR:

    ocr = Motion::OCR.new language: 'spa'
