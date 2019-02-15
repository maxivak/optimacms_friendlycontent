module Optimacms
  module Friendlycontent
    class ContentSourceFactory

      def self.build(name, opts={})
        obj = ContentSource.new(name, opts)
      end

    end
  end
end


