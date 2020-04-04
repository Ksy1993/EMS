require "rails_helper"

RSpec.feature "Comment management", :type => :feature do
  scenario "User creates a new comment" do
    visit "/comments/new"
       
       fill_in "description", :with => "wonderful"
       fill_in "event_id", :with => "4"
    click_button "Create Comment"

    expect(page).to have_text("Comment was successfully created.")
  end
end