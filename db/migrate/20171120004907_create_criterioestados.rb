class CreateCriterioestados < ActiveRecord::Migration[5.0]
  def change
    create_table :criterioestados do |t|
      t.belongs_to :criterio, foreign_key: true
      t.belongs_to :estado, foreign_key: true

      t.timestamps
    end
  end
end
