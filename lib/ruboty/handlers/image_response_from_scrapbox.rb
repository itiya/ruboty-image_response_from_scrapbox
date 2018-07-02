require "ruboty/image_response_from_scrapbox/actions/image"

module Ruboty
  module Handlers
    # Response by image from scrapbox table
    class ImageResponseFromScrapbox < Base
      on /image/, name: 'image', description: 'response by image from scrapbox'
      env :SCRAPBOX_PROJECT_NAME, "Scrapboxのプロジェクト名"
      env :SCRAPBOX_PAGE_NAME, "Scrapboxのプロジェクト内のページ名"

      def image(message)
        Ruboty::ImageResponseFromScrapbox::Actions::Image.new(message).call
      end

    end
  end
end
