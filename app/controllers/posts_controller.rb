class PostsController < ApplicationController
  def new # action 
    @post = Post.new
  end

  def create # crud method - create a new post
    @post = Post.new(post_params)
    if @post.save
      flash[:notice] = "Post was successfully made"
      redirect_to post_path(@post)
    else
      render 'new'
    end
  end

  def show
    @post = Post.find(params[:id])
  end


  private
    
  def post_params
    params.require(:post).permit(:caption, :comments)
  end

end 