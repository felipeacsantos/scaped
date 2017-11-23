class AddUsuarioIdToObjetos < ActiveRecord::Migration[5.0]
  def change
    add_column :objetos, :usuario_id, :integer
  end
end
