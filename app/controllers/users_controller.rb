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
  
  def signup
    @user = User.new(email:params['email'], password:params['password'])
    tripbook = TripBook.create
    @user.trip_book = tripbook
    @user.save


    if @user.valid?
      # if the user is created successfully, send back the user
      token = JWT.encode({ user_id: @user.id }, 's3cr3t', 'HS256')
      render json: { user: UserSerializer.new(@user), token: token }
    else
      # otherwise, send back an error
      render json: { errors:@user.errors.full_messages }, status: :unauthorized
    end
  end

  def show
    render json: @current_user
  end

  private
  def user_params
    params.permit(:email, :password)
  end

end
