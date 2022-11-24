class JekyllImageDataWriter
  def initialize(image_data)
    @image_data = image_data.to_json
  end

  def write
    File.open("_data/photos.json", "w") do |file|
      file.write(@image_data)
    end
  rescue => e
    puts "Error - Unable to write jekyll photos file"
    raise e
  end
end
