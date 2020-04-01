require 'spec_helper'
require 'rails_helper'

RSpec.describe EventsController, type: :controller do
  describe "GET index" do
    it 'returns a successful response' do
      get :index
      expect(response).to be_successful
    end
  end
end

describe "GET events#show" do
    it "should render events#show template" do
    end
  end
  describe "GET events#new" do
    it "should render events#new template" do
    end
  end


  RSpec.describe EventsController, type: :controller do
  describe "#index" do
    context "as an authenticated user" do
      before do
        @user = FactoryBot.create(:user)
      end

      it "responds successfully" do
        sign_in @user
        get :index
        aggregate_failures do
          expect(response).to be_success
          expect(response).to have_http_status "200"
        end
      end
    end
  end
end