require 'rdiscount'
module Forem
  module Formatters
    class RDiscount
      def self.format(text)
        ::RDiscount.new(text).to_html.html_safe
      end

      def self.blockquote(text)
        text.split("\n").map do |line|
          "> " + line
        end.join("\n")
      end
    end
  end
end
