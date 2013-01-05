unless defined?(Motion::Project::Config)
  raise "The motion-ocr gem must be required within a RubyMotion project Rakefile."
end


Motion::Project::App.setup do |app|
  # scans app.files until it finds app/ (the default)
  # if found, it inserts just before those files, otherwise it will insert to
  # the end of the list
  insert_point = 0
  app.files.each_index do |index|
    file = app.files[index]
    break if file =~ /^(?:\.\/)?app\// # found app/, so stop looking
    insert_point = index + 1
  end

  Dir.glob(File.join(File.dirname(__FILE__), 'motion-ocr/**/*.rb')).reverse.each do |file|
    app.files.insert(insert_point, file)
  end

  motion_ocr_vendor = File.expand_path(File.join(File.dirname(__FILE__), '../vendor/MotionOCR'))
  app.vendor_project( motion_ocr_vendor,
                      :xcode,
                      :headers_dir => 'MotionOCR' )

end
