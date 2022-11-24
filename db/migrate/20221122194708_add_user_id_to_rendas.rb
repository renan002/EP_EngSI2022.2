class AddUserIdToRendas < ActiveRecord::Migration[7.0]
  def change
    add_column :rendas, :user_id, :integer
  end
end
