class CreateValparametros < ActiveRecord::Migration[5.0]
  def change
    create_table :valparametros do |t|
      t.string :valor
      t.references :parametro, foreign_key: true

      t.timestamps
    end
  end
end
