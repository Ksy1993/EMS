class CommentsController < ApplicationController
  def new
  	@comment = Comment.new
  end

  def index
  	@comments = Comment.all
  end

  def create
  	comment = Comment.new
  	comment.description = params[:comment][:description]
  	comment.event_id = params[:comment][:event_id]
  	comment.save
  	redirect_to new_comment_path
  end

  def edit
  end

  # def show
  # 	@comment = Comment.find(params[:id])
  # end
end
