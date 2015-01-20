class CreateCommittees < ActiveRecord::Migration
  def change
    create_table :committees do |t|
      t.string :name
      t.references :logo, index: true

      t.timestamps null: false
    end
    add_foreign_key :committees, :logos
  end
end
