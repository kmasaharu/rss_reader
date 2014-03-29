class AddLockedToPalaces < ActiveRecord::Migration
  def change
    add_column :palaces, :locked, :boolean
  end
end
