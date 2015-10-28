class Create < ActiveRecord::Migration
   def change
    create_table :foods_users do |t|
    	t.column :food_id, :integer
        t.column :user_id, :integer 

    	t.timestamps
    end

    create_table :exercises do |t|
      t.column :name, :string
      t.column :calories, :integer

      t.timestamps
    end

     create_table :exercises_users do |t|
      t.column :user_id, :integer
      t.column :exercise_id, :integer

      t.timestamps
    end
  end
end
