require "rails_helper"

RSpec.feature "Event management", :type => :feature do
  scenario "User creates a new Event" do
    visit "/events/new"

    fill_in "title", :with => "runevent"
    click_button "Create Event"

    expect(page).to have_text("Event was successfully created.")
  end
end
