# @author Mike Bland (michael.bland@gsa.gov)

require 'sass'

module GuidesStyle18F
  class Sass
    DIR = File.join File.dirname(__FILE__), 'sass'
    GUIDES_STYLES_FILE = File.join DIR, 'guides_style_18f.scss'
  end
end

Sass.load_paths << ::GuidesStyle18F::Sass::DIR
