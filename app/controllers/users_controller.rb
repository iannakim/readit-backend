class UsersController < ApplicationController
  before_action :authorized, only: [:keep_logged_in]

  def index
    @users = User.all
    render json: @users
  end


  def login
      @user = User.find_by(email: params[:email])
      if @user && @user.authenticate(params[:password])
          wristband_token = encode_token({user_id: @user.id})

          render json: {
              user: UserSerializer.new(@user), 
              token: wristband_token
          }
      else
          render json: {error: "INCORRECT EMAIL OR PASSWORD"}, status: 422
      end
  end

  def keep_logged_in
    wristband_token = encode_token({user_id: @user.id})

    render json: {
        user: UserSerializer.new(@user), 
        token: wristband_token
    }
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
        wristband_token = encode_token({user_id: @user.id})

        render json: {
            user: UserSerializer.new(@user), 
            token: wristband_token
        }
    else
        render json: {error: "There was an error creating an account. Please try again."}, status: 422
    end
  end


private

  def user_params
      params.permit(:firstname, :lastname, :email, :password)
  end



end
