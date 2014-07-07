# -*- coding: utf-8 -*-
require "bundler/gem_tasks"
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'

Bundler.setup
Bundler.require

require './lib/motion-ocr'

Motion::Project::App.setup do |app|
  app.name = 'MotionOCR'

  app.deployment_target = '5.0'

end
