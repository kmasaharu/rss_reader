class AddDateToEntry < ActiveRecord::Migration
  def change
    add_column :entries, :public_date, :datetime
  end
end
