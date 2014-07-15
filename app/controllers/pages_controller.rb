class PagesController < ApplicationController
  def home
  end

  def pricing
    @receptionist_service_plan = Plan.find_by_name('Receptionist Service')
    @customer_service_plan = Plan.find_by_name('Customer Service')
    @enterprise_plan = Plan.find_by_name('Enterprise')
  end
end
