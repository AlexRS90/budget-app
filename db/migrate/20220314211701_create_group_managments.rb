class CreateGroupManagments < ActiveRecord::Migration[7.0]
  def change
    create_table :group_managments do |t|
      t.references :group, null: false, foreign_key: true
      t.references :managment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
