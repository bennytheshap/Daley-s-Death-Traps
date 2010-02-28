class CreateCars < ActiveRecord::Migration
  def self.up
    create_table :cars do |t|
      t.integer :number
      t.integer :model_id
      t.integer :year

      t.timestamps
    end
  end

  def self.down
    drop_table :cars
  end
end
