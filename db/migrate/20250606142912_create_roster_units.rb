class CreateRosterUnits < ActiveRecord::Migration[7.1]
  def change
    create_table :roster_units do |t|
      t.string :flavor_name
      t.references :roster, null: false, foreign_key: true
      t.references :unit, null: false, foreign_key: true

      t.timestamps
    end
  end
end
