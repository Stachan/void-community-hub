class CreateRosters < ActiveRecord::Migration[7.1]
  def change
    create_table :rosters do |t|
      t.string :name
      t.integer :point_limit

      t.timestamps
    end
  end
end
