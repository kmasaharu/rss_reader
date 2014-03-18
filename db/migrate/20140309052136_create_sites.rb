class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.integer :app_id
      t.string :name
      t.string :url
      t.string :rss_url

      t.timestamps
    end
  end
end
