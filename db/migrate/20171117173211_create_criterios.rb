class CreateCriterios < ActiveRecord::Migration[5.0]
  def change
    create_table :criterios do |t|
      t.integer :operador

      t.timestamps
    end
  end
end
