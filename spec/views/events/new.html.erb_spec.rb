require 'rails_helper'

RSpec.describe "events/new.html.erb", type: :view do
   it "infers the controller path" do
    expect(controller.request.path_parameters[:controller]).to eq("events")
    expect(controller.controller_path).to eq("events")
  end
end
