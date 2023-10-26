# frozen_string_literal: true

class RepositoryController < ApplicationController
  def new
  end

  def index
    result = Adapters::HttpRequests::Repositories.search(search_param.fetch(:search))

    render "index", locals: {result:}
  end

  private

  DEFAULT_SEARCH = {search: ""}.freeze

  def search_param
    @search_param = params.permit(:search)
      .reverse_merge(DEFAULT_SEARCH)
  end
end
