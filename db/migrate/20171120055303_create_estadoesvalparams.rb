class CreateEstadoesvalparams < ActiveRecord::Migration[5.0]
  def change
    create_table :estadoesvalparams do |t|
      t.belongs_to :estado, foreign_key: true
      t.belongs_to :esvalparam, foreign_key: true

      t.timestamps
    end
  end
end
