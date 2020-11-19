class AddCompositionsToMember < ActiveRecord::Migration[6.0]
  def change
    add_reference :compositions, :member, null: false, foreign_key: true
  end
end
