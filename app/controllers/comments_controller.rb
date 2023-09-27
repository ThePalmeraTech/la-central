class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    redirect_to article_path(@article)
  end

  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])

    if current_user_can_delete_comment?(@comment)
      @comment.destroy
      redirect_to article_path(@article)
    else
      flash[:alert] = "You don't have permission to delete this comment."
      redirect_to article_path(@article)
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:user_id, :body)
  end

  def current_user_can_delete_comment?(comment)
    current_user == comment.user || current_user.admin?
  end

end
