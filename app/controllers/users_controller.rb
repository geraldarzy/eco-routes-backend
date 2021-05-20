class UsersController < ApplicationController
  before_action :authenticate, only: [:show]

  def login
    @user = User.find_by(email: params[:email])
    if @user && user.authenticate(params[:password])
      # if they gave the right info, return that user object
      token = JWT.encode({ user_id: @user.id }, 'mysecret', 'HS256')
      render json: { user: UserSerializer.new(@user), token: token }
    else
      # otherwise, return some error message
      render json: { errors: ["Invalid email or password"] }, status: :unauthorized
    end
  end
  
  
end
