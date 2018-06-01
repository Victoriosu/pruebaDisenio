class CreateDonacions < ActiveRecord::Migration[5.1]
  def change
    create_table :donacions do |t|
      t.references :user, foreign_key: true
      t.integer :monto

      t.timestamps
    end
  end
end
