class AddUserIdToDividas < ActiveRecord::Migration[7.0]
  def change
    add_column :dividas, :user_id, :integer
  end
end
