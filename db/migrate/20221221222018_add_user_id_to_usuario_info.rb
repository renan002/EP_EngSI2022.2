class AddUserIdToUsuarioInfo < ActiveRecord::Migration[7.0]
  def change
    add_column :usuario_infos, :user_id, :integer
  end
end
