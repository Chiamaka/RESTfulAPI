class CreateTenants < ActiveRecord::Migration
  def change
    create_table :tenants do |t|
    	t.string :name
    	t.integer :age
    	t.string :national_id
    	t.references :school
    	t.references :cribb
      t.timestamps null: false
    end
  end
end
