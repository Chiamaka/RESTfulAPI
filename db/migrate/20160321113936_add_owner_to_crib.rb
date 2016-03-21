class AddOwnerToCrib < ActiveRecord::Migration
  def change
    add_reference :cribbs, :owner, index: true, foreign_key: true
  end
end
