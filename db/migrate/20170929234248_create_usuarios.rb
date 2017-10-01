class CreateUsuarios < ActiveRecord::Migration[5.0]
  def change
    create_table :usuarios do |t|
      t.string :primeironome
      t.string :sobrenome
      t.string :email
      t.string :senha
      t.date :datanasc

      t.timestamps
    end
  end
end
