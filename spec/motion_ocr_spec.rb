describe MotionOCR do

  before do
    @ocr = MotionOCR.new
  end

  it "can detect the text in the sample image" do
    image_with_text = UIImage.imageWithContentsOfFile(File.expand_path('../support/phototest.gif', __FILE__)).CGImage

    @ocr.scan(image_with_text).should == <<-EOF.gsub(/^      /, '')
      This is a lot of 12 point text to test the
      ocr code and see if it works on all types
      of file format.
      The quick brown dog jumped over the
      lazy fox. The quick brown dog jumped
      over the lazy fox. The quick brown dog
      jumped over the lazy fox. The quick
      brown dog jumped over the lazy fox.

    EOF
  end

end
