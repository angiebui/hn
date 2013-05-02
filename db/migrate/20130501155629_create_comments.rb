class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :comment
      t.references :commentable, :polymorphic => true
      t.references :commenter
      t.timestamps
    end
  end
end
