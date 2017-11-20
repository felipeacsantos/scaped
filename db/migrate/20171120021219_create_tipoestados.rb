class CreateTipoestados < ActiveRecord::Migration[5.0]
  def change
    create_table :tipoestados do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
