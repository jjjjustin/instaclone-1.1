class UsersController < ApplicationController

  before_action :authenticate_user!, except: :index

  def home
    @posts = Post.all
  end

  def show
    @user = current_user
    posts = Post.all
    @posts = posts.where(user_id:@user_id)
  end
end
