class CreatePostRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :post_recipes do |t|
      t.string :title
      t.text :caption
      t.string :recipe_image_id
      t.integer :user_id
      t.integer :ng_flag1
      t.integer :ng_flag2
      t.integer :ng_flag3
      t.integer :ng_flag4
      t.integer :ng_flag5
      t.integer :ng_flag6
      t.integer :ng_flag7
      t.integer :ng_flag8
      t.integer :ng_flag9
      t.integer :ng_flag10

      t.timestamps
    end
  end
end
