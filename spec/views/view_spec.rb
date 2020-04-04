require 'rails_helper'

RSpec.describe "events/index.html.erb", type: :view do
  it "lists all of the events" do
    Event.create!(title: '#event',start: '2020/03/03', end: '2020/03/03', user_id: '1')
    visit('/events')
     
    expect(page).to have_content('#event 2020/03/03 2020/03/03 1')
  end
end

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
