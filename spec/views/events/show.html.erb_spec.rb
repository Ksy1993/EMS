require 'rails_helper'

RSpec.describe "events/show.html.erb", type: :view do
  it "displays the events with id: 1" do
      event = Event.create!(:title => "#tagHoli", :start => "2020-04-10", :end => "2020-04-12", :user_id => "1")
      controller.extra_params = { :id => event.id }

      expect(controller.request.fullpath).to eq event_path(event)
    end
end
