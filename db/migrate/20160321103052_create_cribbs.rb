class CreateCribbs < ActiveRecord::Migration
  def change
    create_table :cribbs do |t|
    	t.string :owner
    	t.string :description
    	t.integer :tenants
      t.timestamps null: false
    end
  end
end
