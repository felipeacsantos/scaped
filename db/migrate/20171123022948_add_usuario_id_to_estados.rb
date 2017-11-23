class AddUsuarioIdToEstados < ActiveRecord::Migration[5.0]
  def change
    add_column :estados, :usuario_id, :integer
  end
end
