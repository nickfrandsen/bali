class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    checkout_summary_path
  end
end