class AddUserIdToRecursos < ActiveRecord::Migration[7.0]
  def change
    add_column :recursos, :user_id, :integer
  end
end
