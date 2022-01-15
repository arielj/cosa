class CreateCandidates < ActiveRecord::Migration[6.1]
  def change
    create_table :candidates do |t|
      t.string :name, null: false
      t.string :last_name, null: false
      t.string :location, null: false
      t.string :email, null: false
      t.jsonb :links

      t.timestamps
    end
  end
end
