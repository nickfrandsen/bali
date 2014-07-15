class CheckoutController < ApplicationController

  def start
    session[:subscription_plan] = params[:subscription_plan]
    redirect_to new_user_registration_path
  end

  def summary
    @plan = Plan.find(session[:subscription_plan])
  end

  def create
    current_user.create_subscription(plan_id: session[:subscription_plan])
    redirect_to checkout_confirmation_path
  end

  def confirmation
    session[:subscription_plan] = nil
  end

end
