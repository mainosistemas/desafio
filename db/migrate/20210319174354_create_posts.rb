class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.references :blog
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
