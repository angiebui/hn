class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.references :user
      t.integer :postvotes_count, :default => 0
      t.timestamps
    end
  end
end
