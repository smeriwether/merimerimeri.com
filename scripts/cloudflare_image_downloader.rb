require "httparty"

class CloudflareImageDownloader
  def initialize(account_id, api_token)
    @account_id = account_id
    @api_token = api_token
  end

  def download_all
    response = HTTParty.get(
      "https://api.cloudflare.com/client/v4/accounts/#{@account_id}/images/v1",
      headers: {
        "Content-Type" => "application/json",
        "Authorization" => "Bearer #{@api_token}"
      }
    )

    result = JSON.parse(response.body)

    image_data = result["result"]["images"]

    image_data.map do |image|
      public_variant = image["variants"].select { |v| v.include?("public") }.first
      thumbnail_variant = image["variants"].select { |v| v.include?("thumbnails") }.first
      {
        filename: image["filename"],
        full_size_variant: public_variant,
        thumbnail_variant: thumbnail_variant,
      }
    end
  rescue => e
    puts "Error - Unable to download image data from cloudflare"
    raise e
  end
end
