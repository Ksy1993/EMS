require 'rails_helper'

RSpec.describe "comments/new.html.erb", type: :view do
   it "infers the controller path" do
    expect(controller.request.path_parameters[:controller]).to eq("comments")
    expect(controller.controller_path).to eq("comments")
  end
end
