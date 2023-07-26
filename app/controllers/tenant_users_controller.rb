class TenantUsersController < ApplicationController
  def create
    tenant_user = TenantUserCreator.call(create_params).result
    render json: tenant_user, status: :created
  end

  private
  def create_params
    params.permit(:user_id, :tenant_id)
  end
end