# frozen_string_literal: true

class UserCreator
  prepend SimpleCommand

  def initialize(params)
    @params = params
  end

  def call
    user = User.find_by(email: @params[:email])

    if user.nil?
      user = User.create!({first_name: @params[:first_name],
                          last_name: @params[:last_name],
                          email: @params[:email]})
    end
    user
  end
end
