class FixColumnName < ActiveRecord::Migration
  def change
  	rename_column :comps, :type, :category
  end
end
