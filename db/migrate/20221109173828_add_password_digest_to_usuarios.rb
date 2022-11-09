class AddPasswordDigestToUsuarios < ActiveRecord::Migration[7.0]
  def change
    add_column :usuarios, :password_digest, :string
  end
end
