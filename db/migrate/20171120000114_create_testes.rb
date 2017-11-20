class CreateTestes < ActiveRecord::Migration[5.0]
  def change
    create_table :testes do |t|
      t.integer :versao
      t.string :texto
      t.integer :checkvalor
      t.integer :checkexists
      t.references :objeto, foreign_key: true
      t.references :criterio, foreign_key: true

      t.timestamps
    end
  end
end
