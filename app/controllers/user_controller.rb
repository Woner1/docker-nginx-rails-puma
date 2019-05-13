class UserController < ApplicationController
  def index
    @user=User.page(params[:page])
    render json:{ status: 200,data: @user }
  end

  def show
  end


end
