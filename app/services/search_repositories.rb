# frozen_string_literal: true

require 'dry/monads'

class SearchRepositories < Dry::Struct
  include Dry::Monads[:result]

  def call(search:)
    repositories(search)
  end
end
