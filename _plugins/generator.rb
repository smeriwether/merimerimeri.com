module ImagePagePlugin
  class ImagePagePageGenerator < Jekyll::Generator
    safe true

    def generate(site)
      site.data["photos"].map do |image|
        site.pages << ImagePage.new(site, image)
      end
    end
  end

  class ImagePage < Jekyll::Page
    def initialize(site, image)
      @site = site
      @base = site.source
      @dir  = image['filename']

      @basename = @dir
      @ext      = ".html"
      @name     = @basename + @ext

      @data = {
        "image" => image,
        "date" => image['date'],
        "metadata" => image['metadata']
      }

      # Set the page :type, which links the page details (layout, etc) via the _config.yaml
      data.default_proc = proc do |_, key|
        site.frontmatter_defaults.find(relative_path, :image, key)
      end
    end

    def url_placeholders
      {
        image: @dir,
      }
    end
  end
end
