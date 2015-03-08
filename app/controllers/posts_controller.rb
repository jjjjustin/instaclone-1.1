class PostsController < ApplicationController
  before_action :authenticate_user!

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    respond_to do |format|
      if @post.save
        format.html { redirect_to users_show_path(current_user), notice: 'Post was successfully created.' }
      else
        format.html { redirect_to root_path, notice: "Something went wrong" }
      end
    end
  end

  private
    def post_params
      params.require(:post).permit(:caption, :picture)
    end
end
