class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :email, null: false, index: true
      t.string :name
      t.string :image
      t.string :nickname
      t.string :last_name
      t.integer :role, comment: "0 admin, 1 recruitment, 2 user"

      t.timestamps
    end
  end
end
