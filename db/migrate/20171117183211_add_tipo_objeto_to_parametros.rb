class AddTipoObjetoToParametros < ActiveRecord::Migration[5.0]
  def change
    add_column :parametros, :tipoobjeto, :integer
    add_reference :parametros, :tipoobjeto, foreign_key: true
  end
end
