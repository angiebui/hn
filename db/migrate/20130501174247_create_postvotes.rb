class CreatePostvotes < ActiveRecord::Migration
  def change
    create_table :postvotes do |t|
      t.references :user
      t.references :post
      t.string :score_type
      t.integer :score
    end
  end
end
