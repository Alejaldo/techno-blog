class PostsController < ApplicationController
  #before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def show
    set_post
  end

  def new
  end

  def edit
    set_post
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to @post
    else
      render action: 'new'
    end
  end

  def update
    set_post

    if @post.update(post_params)
      redirect_to @post
    else
      render action: 'edit'
    end
  end

  def destroy
    set_post

    @post.destroy
    redirect_to posts_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_params
      params.require(:post).permit(:content)
    end
end
