require "ruboty/ponpetter/actions/ponpetter"

module Ruboty
  module Handlers
    class Ponpetter < Base
      on /ponpetter/, name: 'ponpetter', description: 'PonPonPain.'

      def ponpetter(message)
        Ruboty::Ponpetter::Actions::Ponpetter.new(message).get
      end
    end
  end
end
