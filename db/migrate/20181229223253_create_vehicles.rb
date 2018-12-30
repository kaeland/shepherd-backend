class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.string :color
      t.string :make
      t.string :model
      t.references :driver

      t.timestamps
    end
  end
end
