class CreatePalaces < ActiveRecord::Migration
  def change
    create_table :palaces do |t|
      t.integer :app_id
      t.string :title
      t.string :url
      t.integer :view_count

      t.timestamps
    end
  end
end
