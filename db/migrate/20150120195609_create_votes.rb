class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :number
      t.integer :number_of_invalid
      t.references :constituency, index: true

      t.timestamps null: false
    end
    add_foreign_key :votes, :constituencies
  end
end
