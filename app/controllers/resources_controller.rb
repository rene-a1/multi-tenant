class ResourcesController < ApplicationController
  before_action :set_tenant

  def set_tenant
    tenant_id = params[:tenant_id]
    @tenant = Tenant.find_by(key: tenant_id)
  end

  def create
    MultiTenant.with(@tenant) do
      resource = ResourceCreator.call(create_params).result
      render json: resource, status: :created
    end
  end

  private
  def create_params
    params.permit(:title).merge(tenant: @tenant)
  end
end
