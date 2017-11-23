class AddUsuarioIdToEsvalparams < ActiveRecord::Migration[5.0]
  def change
    add_column :esvalparams, :usuario_id, :integer
  end
end
