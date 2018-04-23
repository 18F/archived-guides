# @author Mike Bland (michael.bland@gsa.gov)

require 'jekyll/layout'
require 'safe_yaml'

module GuidesStyle18F
  # We have to essentially recreate the ::Jekyll::Layout constructor to loosen
  # the default restriction that layouts be included in the site source.
  class Layouts < ::Jekyll::Layout
    private_class_method :new

    def initialize(site, layout_file)
      @site = site
      @base = File.join File.dirname(__FILE__), 'layouts'
      @name = "#{layout_file}.html"
      parse_content_and_data File.join(@base, name)
      process name
    end

    def parse_content_and_data(file_path)
      self.data = {}
      self.content = File.read file_path

      front_matter_pattern = /^(---\n.*)---\n/m
      front_matter_match = front_matter_pattern.match content
      return unless front_matter_match

      self.content = front_matter_match.post_match
      self.data = SafeYAML.load front_matter_match[1],  safe: true
    end
    private :parse_content_and_data

    def self.register(site)
      site.layouts['guides_style_18f_default'] = new site, 'default'
    end
  end
end
