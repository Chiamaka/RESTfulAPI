class DeleteOwnerFieldFromCribb < ActiveRecord::Migration
  def change
  	remove_column :cribbs, :owner
  end
end
