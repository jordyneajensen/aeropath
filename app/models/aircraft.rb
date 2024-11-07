class Aircraft < ApplicationRecord
  validates :registration, presence: true, uniqueness: true
  validates :make_model, presence: true
  validates :max_speed, :cruise_speed, :fuel_capacity, 
            :empty_weight, :max_takeoff_weight,
            presence: true, numericality: { greater_than: 0 }
  
  validates :year_of_manufacture, 
            numericality: { only_integer: true, 
                          greater_than: 1903, # First powered aircraft flight
                          less_than_or_equal_to: -> { Time.current.year } }
  
  validates :number_of_engines, 
            numericality: { only_integer: true, greater_than: 0 }
  
  validates :engine_type, presence: true, 
            inclusion: { in: ['Piston', 'Turboprop', 'Jet', 'Electric'] }

  # Helper methods
  def full_name
    "#{make_model} (#{registration})"
  end

  def multi_engine?
    number_of_engines > 1
  end

  # Scopes for querying
  scope :multi_engine, -> { where('number_of_engines > 1') }
  scope :by_engine_type, ->(type) { where(engine_type: type) }
  scope :newer_than, ->(year) { where('year_of_manufacture > ?', year) }
end