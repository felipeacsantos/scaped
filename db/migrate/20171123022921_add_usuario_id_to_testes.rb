class AddUsuarioIdToTestes < ActiveRecord::Migration[5.0]
  def change
    add_column :testes, :usuario_id, :integer
  end
end
