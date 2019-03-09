require 'optimacms/remote_content/content_source_base'

module Optimacms
  module Friendlycontent
      class ContentSource < ::Optimacms::RemoteContent::ContentSourceBase


        def get_file(path, opts={})
          FriendlycontentApi::Client.download(source_info, path, opts)
        end


      end
    end
end

