class CreateFoodTable < ActiveRecord::Migration
  def change
    create_table :food_tables do |t|
    	t.column :name, :string
        t.column :calories, :integer
    	t.timestamps
    end
  end
end
