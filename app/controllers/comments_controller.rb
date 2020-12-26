class CommentsController < ApplicationController
 
  def create
    @post = Post.find(params[:post_id])
    @post.comments.create(comment_params)

    redirect_to post_path(@post)
  end

  private
    # Only allow a list of trusted parameters through.
    def comment_params
      params.require(:comment).permit(:content)
    end
end
