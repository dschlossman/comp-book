class CreateComps < ActiveRecord::Migration
  def change
    create_table :comps do |t|
      t.string :name
      t.string :date
      t.string :address
      t.string :city
      t.string :state
      t.integer :price

      t.timestamps
    end
  end
end
