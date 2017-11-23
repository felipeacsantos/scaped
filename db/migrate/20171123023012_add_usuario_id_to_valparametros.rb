class AddUsuarioIdToValparametros < ActiveRecord::Migration[5.0]
  def change
    add_column :valparametros, :usuario_id, :integer
  end
end
