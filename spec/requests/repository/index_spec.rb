# frozen_string_literal: true

require "rails_helper"

describe RepositoryController, type: :controller do
  describe "GET /index" do
    subject(:search_repo) { get :index, params: search_params }

    context "when search params is empty" do
      let(:search_params) {}

      before do
        allow(Adapters::HttpRequests::Repositories).to receive(:search) { nil }

        search_repo
      end

      it { expect(response).to render_template(:index) }
    end

    context "when search params is filled" do
      let(:search_params) { {search: "any"} }

      before do
        allow(Adapters::HttpRequests::Repositories).to receive(:search) { nil }

        search_repo
      end

      it { expect(response).to render_template(:index) }
    end
  end
end
