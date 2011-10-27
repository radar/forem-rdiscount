require 'rdiscount'
module Forem
  module Formatters
    class RDiscount
      def self.format(text)
        ::RDiscount.new(ERB::Util.h(text)).to_html.html_safe
      end
    end
  end
end
