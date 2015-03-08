class UsersController < ApplicationController

  before_action :authenticate_user!, except: :index


  def show
    @user = current_user
    posts = Post.all
    @posts = posts.where(user_id:@user_id)
  end
end
