class AddPerfilIdToUser < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :perfil, foreign_key: true
  end
end
