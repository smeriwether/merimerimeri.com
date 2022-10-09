module AlbumPagePlugin
  class AlbumPagePageGenerator < Jekyll::Generator
    safe true

    def generate(site)
      site.data["albums"].map do |album|
        site.pages << AlbumPage.new(site, album)
      end
    end
  end

  class AlbumPage < Jekyll::Page
    def initialize(site, album)
      @site = site
      @base = site.source
      @dir  = album['href']

      @basename = @dir
      @ext      = ".html"
      @name     = @basename + @ext

      @data = {
        "album" => album
      }

      # Set the page :type, which links the page details (layout, etc) via the _config.yaml
      data.default_proc = proc do |_, key|
        site.frontmatter_defaults.find(relative_path, :album, key)
      end
    end

    def url_placeholders
      {
        album: @dir,
      }
    end
  end
end
