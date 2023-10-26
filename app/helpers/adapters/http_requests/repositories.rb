# frozen_string_literal: true

require 'dry/monads'

module Adapters
  module HttpRequests
    class Repositories < Dry::Struct
      include Dry::Monads[:result]

      URL = 'https://api.github.com/search/repositories?q='

      def self.search(params)
        new.search(params)
      end

      def search(params)
        request(params)
      end

      private

      def request(params)
        url      = URL + params
        response = conn.get(url)
        return Success(response.body) if response.status == 200

        Failure('Unexpected error.')
      end

      def conn
        Faraday.new do |f|
          f.request :json
          f.response :json
        end
      end
    end
  end
end
