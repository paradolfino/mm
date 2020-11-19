class CreateForumPostReplies < ActiveRecord::Migration[6.0]
  def change
    create_table :forum_post_replies do |t|
      t.text :description
      t.references :forum_post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
