class CreateManagments < ActiveRecord::Migration[7.0]
  def change
    create_table :managments do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.integer :amount

      t.timestamps
    end
  end
end
