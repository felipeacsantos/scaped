class CreateParametrizacaos < ActiveRecord::Migration[5.0]
  def change
    create_table :parametrizacaos do |t|
      t.belongs_to :objeto, foreign_key: true
      t.belongs_to :parametro, foreign_key: true

      t.timestamps
    end
  end
end
