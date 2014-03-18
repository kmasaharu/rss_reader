class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.integer :site_id
      t.string :title
      t.string :url
      t.integer :view_count

      t.timestamps
    end
  end
end
