class CreatePets < ActiveRecord::Migration[5.0]
  def change
    create_table :pets do |t|
      t.string :category
      t.string :description
      t.string :address
      t.date :found_at

      t.timestamps
    end
  end
end
