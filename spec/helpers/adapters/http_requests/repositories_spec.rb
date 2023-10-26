# frozen_string_literal: true

require "rails_helper"

describe Adapters::HttpRequests::Repositories do
  subject(:search) { described_class.search("any") }

  context "when condition" do
    let(:stubs) { Faraday::Adapter::Test::Stubs.new }
  end
end
