class CreateVoivodeships < ActiveRecord::Migration
  def change
    create_table :voivodeships do |t|
      t.string :name
      t.integer :number_of_seats

      t.timestamps null: false
    end
  end
end
