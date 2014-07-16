class AddPaypalUrlToPlans < ActiveRecord::Migration
  def up
    add_column :plans, :subscribe_paypal_plan_url, :text
    Plan.find(1).update_attributes(subscribe_paypal_plan_url: 'https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=JWUV3Q5948DEG')
    Plan.find(2).update_attributes(subscribe_paypal_plan_url: 'https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=UQ6DK9HPMX9KJ')
    Plan.find(3).update_attributes(subscribe_paypal_plan_url: 'https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=WNDLDWAEK9N36')
  end

  def down
    remove_column :plans, :subscribe_paypal_plan_url, :text
  end
end
