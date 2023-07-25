# frozen_string_literal: true

class TenantCreator
  prepend SimpleCommand

  def initialize(params)
    @params = params
  end

  def call
    tenant = Tenant.find_by(name: @params[:name])
    Tenant.create!({name: @params[:name]}) if tenant.nil?
  end
end
