class CreateMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :members do |t|
      t.string :display_name
      t.text :bio

      t.timestamps
    end
  end
end
