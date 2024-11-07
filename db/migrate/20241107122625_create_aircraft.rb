# frozen_string_literal: true

class CreateAircraft < ActiveRecord::Migration[7.1]
  def change
    create_table :aircraft do |t|
      t.string :registration
      t.string :make_model
      t.float :max_speed
      t.float :cruise_speed
      t.float :fuel_capacity
      t.float :empty_weight
      t.float :max_takeoff_weight
      t.integer :year_of_manufacture
      t.string :engine_type
      t.integer :number_of_engines

      t.timestamps
    end

    add_index :aircraft, :registration, unique: true
  end
end
