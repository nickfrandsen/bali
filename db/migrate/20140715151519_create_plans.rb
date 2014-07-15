class CreatePlans < ActiveRecord::Migration
  def up
    create_table :plans do |t|
      t.text :name
      t.decimal :price

      t.timestamps
    end
    Plan.create(name: 'Receptionist Service', price: 29.95)
    Plan.create(name: 'Customer Service', price: 69.95)
    Plan.create(name: 'Enterprise', price: 99.95)
  end

  def down
    drop_table :plans do |t|
      t.text :name
      t.decimal :price

      t.timestamps
    end
  end
end
