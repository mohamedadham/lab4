class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :content
      t.string :title, unique: true, null: false, limit: 50
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
