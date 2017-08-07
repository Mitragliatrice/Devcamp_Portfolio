class CommentsController < ApplicationController
  def create
    @comment = current_user.comments.build(comment_params)
  end

  def destroy

  end

  def update

  def

  def comment_params
    params.require(:comment).permit(:content)
  end
end
