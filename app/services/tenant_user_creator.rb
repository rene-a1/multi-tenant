# frozen_string_literal: true

class TenantUserCreator
  prepend SimpleCommand

  def initialize(params)
    @params = params
  end

  def call
    tenant_user = TenantUser.find_by(user_id: @params[:user_id], tenant_id: @params[:tenant_id])
    TenantUser.create!({user_id: @params[:user_id], tenant_id: @params[:tenant_id]}) if tenant_user.nil?
  end
end
