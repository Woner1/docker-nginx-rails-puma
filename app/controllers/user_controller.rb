class UserController < ApplicationController
  def index
    @user=User.all
    render json: { status: 200,data: @user }
  end

  def show
  end


end
