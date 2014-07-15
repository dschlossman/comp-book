class ChangeIntegersToDecimals < ActiveRecord::Migration
  def change
  	change_column :comps, :price, :decimal
  	change_column :comps, :price_psf_building, :decimal
  end
end
