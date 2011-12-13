require 'rdiscount'
module Forem
  module Formatters
    class RDiscount
      def self.format(text)
        ::RDiscount.new(text).to_html.html_safe
      end
    end
  end
end
