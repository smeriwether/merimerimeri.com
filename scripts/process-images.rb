require_relative "./cloudflare_image_downloader.rb"
require_relative "./local_image_finder.rb"
require_relative "./image_metadata_parser.rb"
require_relative "./jekyll_image_data_writer.rb"

cloudflare_account_id = ENV["CLOUDFLARE_ACCOUNT_ID"]
cloudflare_api_token = ENV["CLOUDFLARE_API_TOKEN"]

downloader = CloudflareImageDownloader.new(cloudflare_account_id, cloudflare_api_token)
images = downloader.download_all

images_with_metadata = images.map do |image|
  local_image_finder = LocalImageFinder.new(image[:filename])
  local_file_path = local_image_finder.local_file_path
  metadata_parser = ImageMetadataParser.new(local_file_path)
  {
    filename: image[:filename],
    thumbnail_url: image[:thumbnail_variant],
    full_size_url: image[:full_size_variant],
    metadata: {
      shutter_speed: metadata_parser.shutter_speed,
      aperature: metadata_parser.aperature,
      camera_model: metadata_parser.camera_model,
      focal_length_in_35mm: metadata_parser.focal_length_in_35mm,
      iso: metadata_parser.iso,
    },
    date: metadata_parser.date_time_original,
  }
end

writer = JekyllImageDataWriter.new(images_with_metadata)
writer.write
