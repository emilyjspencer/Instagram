class PostsController < ApplicationController

  before_action :post_helper, only: [:edit, :update, :show, :destroy]

  def new # action 
    @post = Post.new
  end

  def create # crud method - create a new post
    @post = Post.new(post_params)
    @post.user = User.first
    if @post.save
      flash[:notice] = "Post was successfully made"
      redirect_to post_path(@post)
    else
      render 'new'
    end
  end

  def show
  end

  def edit # action
  end

  def update  # crud method
    if @post.update(post_params)
     flash[:notice] = "Post was updated"
     redirect_to post_path(@post)
    else
     flash[:notice] = "Post was not updated"
     render 'edit'
    end
  end

  def index # action
    @posts = Post.paginate(page: params[:page], per_page: 10)
    @posts = Post.all
  end 

  def destroy
    @post.destroy
    flash[:notice] = "Post was deleted"
    redirect_to posts_path
   end

  private
    
  def post_params # posts must have caption and comments field
    params.require(:post).permit(:caption, :comments)
  end

  def post_helper
    @post = Post.find(params[:id])
 end

end 