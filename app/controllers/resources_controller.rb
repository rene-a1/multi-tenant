class ResourcesController < ApplicationController
  def show
    MultiTenant.with(@tenant) do
      p 999999, @tenant
    end
  end
end
