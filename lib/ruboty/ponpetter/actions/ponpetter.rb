module Ruboty
  module Ponpetter
    module Actions
      class Ponpetter < Ruboty::Actions::Base
        PONPETTER_API_URL = "http://ponpetter.herokuapp.com/ponpe.json"

        def initialize(message)
          @message = message
        end

        def get
          message.reply(ponpe)
        end

        private

        def ponpe
          "只今のポンペ数は#{response.body["ponpe_cnt"]}人です。"
        end

        def response
          connection.get(url)
        end

        def connection
          Faraday.new do |connection|
            connection.request  :url_encoded
            connection.adapter  :net_http
            connection.response :json
          end
        end

        def url
          PONPETTER_API_URL
        end
      end
    end
  end
end
