class CreateRecursos < ActiveRecord::Migration[7.0]
  def change
    create_table :recursos do |t|
      t.string :nome
      t.float :valor

      t.timestamps
    end
  end
end
