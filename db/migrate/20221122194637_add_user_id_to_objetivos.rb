class AddUserIdToObjetivos < ActiveRecord::Migration[7.0]
  def change
    add_column :objetivos, :user_id, :integer
  end
end
