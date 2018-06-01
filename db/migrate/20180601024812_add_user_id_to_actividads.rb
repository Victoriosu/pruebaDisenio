class AddUserIdToActividads < ActiveRecord::Migration[5.1]
  def change
    add_reference :actividads, :user, foreign_key: true
  end
end
