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

  def edit # action
    @post = Post.find(params[:id])
  end

  def update  # crud method
    @post = Post.find(params[:id])
    if @post.update(post_params)
     flash[:notice] = "Post was updated"
     redirect_to post_path(@post)
    else
     flash[:notice] = "Post was not updated"
     render 'edit'
    end
  end

  def index # action
    @posts = Post.all
  end 

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:notice] = "Post was deleted"
    redirect_to posts_path
   end

  private
    
  def post_params # posts must have caption and comments field
    params.require(:post).permit(:caption, :comments)
  end

end 