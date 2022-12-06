class LocalImageFinder
  def initialize(filename)
    @filename = filename
  end

  def local_file_path
    image_path = "#{local_website_images_folder}/#{@filename}"
    if !file_exists?(image_path)
      raise Exception.new("Path is not a valid image #{image_path}")
    end
    image_path
  rescue => e
    puts "Error - Unable to find local image file for #{@filename}"
    raise e
  end

  private

  def file_exists?(file_path)
    File.file?(file_path)
  end

  def local_website_images_folder
    "/Users/srm/Pictures/Photos/Website"
  end
end
