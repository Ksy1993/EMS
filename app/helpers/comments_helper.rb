module CommentsHelper
	def link_to_comment(comment)
    link_to(comment.description, comment_path(comment))
  end
end
