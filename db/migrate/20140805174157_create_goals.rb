class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :title
      t.integer :days_to_complete
      t.timestamps
    end
  end
end
