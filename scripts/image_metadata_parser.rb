require "exifr/jpeg"
require "pry"

class ImageMetadataParser
  def initialize(file_path)
    @file_path = file_path
    @metadata = EXIFR::JPEG.new(file_path)
  end

  def shutter_speed
    @metadata.shutter_speed_value.to_s
  end

  def aperature
    @metadata.f_number.to_f.to_s
  end

  def camera_model
    model = @metadata.model.to_s
    if model == "ILCE-6400"
      "Sony A6400"
    elsif model == "ILCE-7M4"
      "Sony A7IV"
    else
      model
    end
  end

  def focal_length_in_35mm
    ((@metadata.focal_length_in_35mm_film.to_f/5.0).ceil * 5).to_s
  end

  def iso
    @metadata.iso_speed_ratings.to_s
  end

  def date_time_original
    @metadata.date_time_original.to_date.to_s
  rescue => e
    binding.pry
    puts "Error calculating date_time_original for #{@file_path}"
    raise e
  end
end
