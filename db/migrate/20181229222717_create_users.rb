class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.references :driver, foreign_key: true
      t.references :destination, foreign_key: true
      t.references :vehicle, foreign_key: true
    end
  end
end
