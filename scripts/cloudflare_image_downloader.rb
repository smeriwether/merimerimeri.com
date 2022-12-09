require "httparty"

class CloudflareImageDownloader
  def initialize(account_id, api_token)
    @account_id = account_id
    @api_token = api_token
  end

  def download_all
    page_count = 1
    is_images_available = true
    image_data = []

    while(is_images_available) do
      data = download_page(page_count)

      is_images_available = data.length > 0
      image_data = [*image_data, *data]
      page_count = page_count + 1
    end

    puts "Found #{image_data.length} photos"
    image_data
  end

  def download_page(n)
    response = HTTParty.get(
      "https://api.cloudflare.com/client/v4/accounts/#{@account_id}/images/v1?page=#{n}&per_page=50",
      headers: {
        "Content-Type" => "application/json",
        "Authorization" => "Bearer #{@api_token}"
      }
    )

    result = JSON.parse(response.body)

    puts result["result_info"]

    image_data = result["result"]["images"]

    image_data.map do |image|
      public_variant = image["variants"].select { |v| v.include?("public") }.first
      thumbnail_variant = image["variants"].select { |v| v.include?("thumbnails") }.first
      {
        filename: image["filename"],
        full_size_variant: serve_on_custom_domain(public_variant),
        thumbnail_variant: serve_on_custom_domain(thumbnail_variant),
      }
    end
  rescue => e
    puts "Error - Unable to download image data from cloudflare"
    raise e
  end

  def serve_on_custom_domain(cloudflare_link)
    cloudflare_link.gsub("https://imagedelivery.net", "https://merimerimeri.com/cdn-cgi/imagedelivery")
  end
end
