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
