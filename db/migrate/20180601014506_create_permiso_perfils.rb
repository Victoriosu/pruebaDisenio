class CreatePermisoPerfils < ActiveRecord::Migration[5.1]
  def change
    create_table :permiso_perfils do |t|
      t.references :perfil, foreign_key: true
      t.references :permiso, foreign_key: true
      t.boolean :concedido

      t.timestamps
    end
  end
end
