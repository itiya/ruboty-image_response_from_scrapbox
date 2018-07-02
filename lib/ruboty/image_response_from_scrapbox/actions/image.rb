module Ruboty
  module ImageResponseFromScrapbox
    module Actions
      class Image < Ruboty::Actions::Base
        def call
          message.reply(image)
        rescue => e
          message.reply(e.message)
        end

        private
        def image
          'test'
        end
      end
    end
  end
end
