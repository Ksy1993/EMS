require 'rails_helper'

RSpec.describe "comments/index.html.erb", type: :view do
   it "displays all the comments" do
    assign(:comments, [
      Comment.create!(:description => "good", :event_id => "4"),
      Comment.create!(:description => "best", :event_id => "4")
    ])

    render

    expect(rendered).to match /good/
    expect(rendered).to match /best/
  end
end
