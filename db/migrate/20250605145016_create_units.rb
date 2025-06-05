class CreateUnits < ActiveRecord::Migration[7.1]
  def change
    create_table :units do |t|
      t.string :name
      t.string :flavor_name
      t.integer :cal0_cost
      t.integer :cal1_cost
      t.integer :cal2_cost
      t.integer :cal3_cost
      t.integer :assault
      t.integer :shooting
      t.integer :strength
      t.integer :toughness
      t.integer :wound
      t.integer :command
      t.integer :size
      t.integer :move

      t.timestamps
    end
  end
end
