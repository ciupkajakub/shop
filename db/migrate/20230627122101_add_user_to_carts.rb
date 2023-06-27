class AddUserToCarts < ActiveRecord::Migration[7.0]
  def change
    add_reference :carts, :user, type: :uuid, foreign_key: true, null: true
  end
end
