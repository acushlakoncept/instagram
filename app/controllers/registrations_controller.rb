class RegistrationsController < Devise::RegistrationsController
  protected

  def update_resources(resource, params)
    resource.update_without_password(params)
  end
end
