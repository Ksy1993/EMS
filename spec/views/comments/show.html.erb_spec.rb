require 'rails_helper'

RSpec.describe "comments/show.html.erb", type: :view do
  it "displays the comment with id: 1" do
      comment = Comment.create!(:description => "nice event",:event_id => "3")
      controller.extra_params = { :id => comment.id }

      expect(controller.request.fullpath).to eq comment_path(comment)
    end
end
