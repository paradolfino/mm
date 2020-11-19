class CreateForumPosts < ActiveRecord::Migration[6.0]
  def change
    create_table :forum_posts do |t|
      t.string :subject
      t.text :description
      t.references :forum_category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
