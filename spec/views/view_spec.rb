require 'rails_helper'

describe "Home page", type: :request do
  it "responds successfully" do
    get root_path
    expect(response).to be_success
    expect(response).to have_http_status "200"
  end
end

describe "index page", type: :request do
  it "responds successfully" do
    get events_index_path
    expect(response).to be_success
    expect(response).to have_http_status "200"
  end
end

describe "new page", type: :request do
  it "responds successfully" do
    get events_new_path
    expect(response).to be_success
    expect(response).to have_http_status "200"
  end
end
