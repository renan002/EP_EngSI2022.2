class CreateUsuarioInfos < ActiveRecord::Migration[7.0]
  def change
    create_table :usuario_infos do |t|
      t.string :foto
      t.integer :idade
      t.string :genero
      t.string :telefone

      t.timestamps
    end
  end
end
