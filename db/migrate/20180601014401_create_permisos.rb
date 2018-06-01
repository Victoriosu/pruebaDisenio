class CreatePermisos < ActiveRecord::Migration[5.1]
  def change
    create_table :permisos do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
