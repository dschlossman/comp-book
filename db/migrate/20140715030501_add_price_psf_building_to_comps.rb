class AddPricePsfBuildingToComps < ActiveRecord::Migration
  def change
  	add_column :comps, :price_psf_building, :integer
  end
end
