class PostsController < ApplicationController
  def new # action 
    @post = Post.new
  end

  def create # crud method - create a new post
    @post = Post.new(post_params)
    @post.save # save to db
  end

  private
    
  def post_params
    params.require(:post).permit(:caption, :comments)
  end

end 