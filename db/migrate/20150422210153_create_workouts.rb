class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.string :type
      t.integer :personal_record
      t.references :user, index: true

      t.timestamps
    end
  end
end
