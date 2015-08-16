class ChangeTable < ActiveRecord::Migration
  def change
    change_table :comments do |t|
      t.integer :user_id
      t.integer :post_id

      t.timestamps
    end
  end
end
