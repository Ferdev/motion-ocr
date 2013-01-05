# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'motion-ocr/version'

Gem::Specification.new do |gem|
  gem.name        = "motion-ocr"
  gem.version     = MotionOCR::VERSION
  gem.authors     = ["Fernando Espinosa Jiménez"]
  gem.email       = ["fer@ferdev.com"]
  gem.summary     = %q{A RubyMotion wrapper for the OCR engine, Tesseract}
  gem.description = %q{Allows to perform text detection inside images in an easy way.}
  gem.homepage    = "https://github.com/ferdev/motion-ocr"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^spec/})

  gem.require_paths = ["lib"]
end
