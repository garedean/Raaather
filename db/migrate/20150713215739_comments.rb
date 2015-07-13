class Comments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :author
      t.string :body
      t.integer :user_id
      t.integer :rather_id

      t.timestamps
    end
  end
end
