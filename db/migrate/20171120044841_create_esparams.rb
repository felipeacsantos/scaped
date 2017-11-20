class CreateEsparams < ActiveRecord::Migration[5.0]
  def change
    create_table :esparams do |t|
      t.string :name
      t.belongs_to :tipoestado, foreign_key: true

      t.timestamps
    end
  end
end
