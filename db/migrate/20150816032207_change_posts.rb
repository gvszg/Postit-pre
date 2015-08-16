class ChangePosts < ActiveRecord::Migration
  def change
    change_table :posts do |t|
      t.remove :foreign_key
      
      t.timestamps
    end
  end
end
