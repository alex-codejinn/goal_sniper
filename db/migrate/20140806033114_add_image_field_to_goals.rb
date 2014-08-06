class AddImageFieldToGoals < ActiveRecord::Migration
  def change
  	add_column :goals, :image, :string
  end
end
