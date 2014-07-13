class CreateCompilations < ActiveRecord::Migration
  def change
    create_table :compilations do |t|
      t.integer :report_id
      t.integer :comp_id
      t.integer :position
      t.datetime :created_at

      t.timestamps
    end
  end
end
