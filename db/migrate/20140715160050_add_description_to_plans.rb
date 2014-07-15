class AddDescriptionToPlans < ActiveRecord::Migration
  def change
    add_column :plans, :description, :text
    Plan.find(1).update_attributes(description: '247 Phone support')
    Plan.find(2).update_attributes(description: '247 Phone and live chat support')
    Plan.find(3).update_attributes(description: '247 dedicated phone and live chat support')
  end
end
