class CreateActividads < ActiveRecord::Migration[5.1]
  def change
    create_table :actividads do |t|
      t.string :nombre
      t.date :fecha
      t.string :estado

      t.timestamps
    end
  end
end
