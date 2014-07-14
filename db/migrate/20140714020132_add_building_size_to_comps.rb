class AddBuildingSizeToComps < ActiveRecord::Migration
  def change
  	add_column :comps, :building_size, :integer
  end
end
