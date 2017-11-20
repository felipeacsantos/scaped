class CreateEsvalparams < ActiveRecord::Migration[5.0]
  def change
    create_table :esvalparams do |t|
      t.string :valor
      t.belongs_to :esparam, foreign_key: true

      t.timestamps
    end
  end
end
