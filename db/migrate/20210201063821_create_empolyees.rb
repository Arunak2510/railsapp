class CreateEmpolyees < ActiveRecord::Migration[6.1]
  def change
    create_table :empolyees do |t|
      t.string :first_name
      t.string :last_name
      t.string :age
      t.string :Gender
      t.string :designation

      t.timestamps
    end
  end
end
