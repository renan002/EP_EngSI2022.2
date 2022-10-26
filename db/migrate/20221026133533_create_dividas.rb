class CreateDividas < ActiveRecord::Migration[7.0]
  def change
    create_table :dividas do |t|
      t.string :nome
      t.string :descricao
      t.string :periodo
      t.string :valor

      t.timestamps
    end
  end
end
