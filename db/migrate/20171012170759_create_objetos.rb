class CreateObjetos < ActiveRecord::Migration[5.0]
  def change
    create_table :objetos do |t|
      t.string :name

      t.timestamps
    end
  end
end
