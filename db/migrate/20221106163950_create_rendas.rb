class CreateRendas < ActiveRecord::Migration[7.0]
  def change
    create_table :rendas do |t|
      t.string :profissao
      t.string :empresa
      t.string :salario

      t.timestamps
    end
  end
end
