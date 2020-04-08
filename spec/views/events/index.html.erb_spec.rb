require 'rails_helper'

RSpec.describe "events/index.html.erb", type: :view do
   it "displays all the events" do
    assign(:events, [
      Event.create!(:title => "#tagHoli", :start => "2020-04-10", :end => "2020-04-12", :user_id => "1"),
      Event.create!(:title => "diwali",:start => "2020-10-10", :end => "2020-10-12", :user_id => "1")
    ])

    render

    expect(rendered).to match /#tagHoli 2020-04-10 2020-04-12 1/
    expect(rendered).to match /diwali 2020-10-10 2020-10-12 1/
  end
end
