class CreateManagments < ActiveRecord::Migration[7.0]
  def change
    create_table :managments do |t|
      t.string :name
      t.integer :amount

      t.timestamps
    end
    add_column :managments, :author_id, :bigint
    add_foreign_key :managments, :users, column: :author_id
    add_index :managments, :author_id
  end
end
