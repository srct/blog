module Jekyll
  class RenderOwlTag < Liquid::Tag

    def initialize(tag_name, images, tokens)
      super
      @images = images
    end

    def render(context)
      images = @images.split(',').map { |image| image.strip }
      output = "<div id=\"owl-demo\" class=\"owl-carousel owl-theme\">"
      images.each do |image|
        output <<= "<div class=\"item\"><img src=\"#{image}\"></div>"
      end
      output << "</div>"
    end
  end
end

Liquid::Template.register_tag('owl_carousel', Jekyll::RenderOwlTag)
