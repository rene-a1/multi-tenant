class UsersController < ApplicationController
  def create
    user = UserCreator.call(create_params).result
    render json: user, status: :created
  end

  private
  def create_params
    params.permit(:email, :first_name, :last_name)
  end
end
