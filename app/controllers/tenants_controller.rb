class TenantsController < ApplicationController
  def create
    tenant = TenantCreator.call(create_params).result
    render json: tenant, status: :created
  end

  private
  def create_params
    params.permit(:name)
  end
end
