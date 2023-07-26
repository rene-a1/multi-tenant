# frozen_string_literal: true

class ResourceCreator
  prepend SimpleCommand

  def initialize(params)
    @params = params
  end

  def call
    resource = Resource.find_by(title: @params[:title])
    Resource.create!({tenant_id: @params[:tenant].id, title: @params[:title]}) if resource.nil?
  end
end