class UsersController < ApplicationController

  before_action :authenticate_user!, except: :index


  def show
    User.find(params[:id])
    @user = User.find(params[:id])
    posts = Post.all
    @posts = posts.where(user_id:@user_id)
  end
end
