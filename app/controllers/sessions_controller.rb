class SessionsController < ApplicationController
  def login
    user = User.find_by(email: params[:email])
    if user && user.password == params[:password]

      token = encode_user_data({ user_data: user.id })

      render json: { token: token }
    else
      render json: { message: "invalid credentials" }
    end
  end

  def handle_bad_authentication
    render json: { message: "Bad credentials" }, status: :unauthorized
  end
end