# @author Mike Bland (michael.bland@gsa.gov)

require 'jekyll/static_file'
require 'liquid'

module GuidesStyle18F
  class Assets
    SOURCE = File.realpath File.join(__FILE__, '..', '..', '..')
    BEGIN_PATH = SOURCE.size + File::SEPARATOR.size

    def self.copy_to_site(site)
      Dir.glob File.join(SOURCE, 'assets', '**', '*') do |asset|
        next unless File.file? asset
        asset = asset[BEGIN_PATH..-1]
        site.static_files << ::Jekyll::StaticFile.new(
          site, SOURCE, File.dirname(asset), File.basename(asset))
      end
    end
  end

  class AssetRootTag < ::Liquid::Tag
    ::Liquid::Template.register_tag 'guides_style_18f_asset_root', self

    def render(context)
      self.class.do_render context
    end

    def self.do_render(context)
      @asset_root ||= begin
        config = context.registers[:site].config
        config['asset_root'] || config['baseurl']
      end
    end
  end
end
