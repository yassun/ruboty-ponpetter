require "ruboty/ponpetter/actions/ponpetter"

module Ruboty
  module Handlers
    class Ponpetter < Base
      on /ponpetter ponpetter/, name: 'ponpetter', description: 'TODO: write your description'

      def ponpetter(message)
        Ruboty::Ponpetter::Actions::Ponpetter.new(message).call
      end
    end
  end
end
