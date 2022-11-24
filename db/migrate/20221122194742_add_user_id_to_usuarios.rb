class AddUserIdToUsuarios < ActiveRecord::Migration[7.0]
  def change
    add_column :usuarios, :user_id, :integer
  end
end
