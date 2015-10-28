class AddColumnFoods < ActiveRecord::Migration
  def change
  	drop_table :food_tables

    create_table :foods do |t|
      t.column  :name,  :string
      t.column :calories, :integer
    end

  end
end
