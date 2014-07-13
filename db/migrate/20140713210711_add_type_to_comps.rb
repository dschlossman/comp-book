class AddTypeToComps < ActiveRecord::Migration
  def change
    add_column :comps, :type, :string
  end
end
