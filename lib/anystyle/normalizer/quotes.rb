module AnyStyle
  class Normalizer
    class Quotes < Normalizer
      QUOTES = /^[«‹»›„‚“‟‘‛”’"❛❜❟❝❞⹂〝〞〟]|[«‹»›„‚“‟‘‛”’"❛❜❟❝❞⹂〝〞〟]$/

      @keys = [:title]

      def normalize(item)
        each_value(item) do |_, value|
          value.gsub! QUOTES, ''
        end
      end
    end
  end
end

