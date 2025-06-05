class RemoveFlavorNameFromUnit < ActiveRecord::Migration[7.1]
  def change
    remove_column :units, :flavor_name
  end
end
