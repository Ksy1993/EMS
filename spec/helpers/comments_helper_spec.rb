require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the CommentsHelper. For example:
#
# describe CommentsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe CommentsHelper, type: :helper do
describe "#link_to_comment" do
    it "links to a comment using its name" do
      comment = Comment.create!(:description => "good one", :event_id => "4")
      expect(helper.link_to_comment(comment)).to include("good one")
      expect(helper.link_to_comment(comment)).to include(comment_path(comment))
    end
  end
end
