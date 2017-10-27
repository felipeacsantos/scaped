class CreateObjetovalparametros < ActiveRecord::Migration[5.0]
  def change
    create_table :objetovalparametros do |t|
      t.belongs_to :objeto, foreign_key: true
      t.belongs_to :valparametro, foreign_key: true

      t.timestamps
    end
  end
end
