# frozen_string_literal: true

class AircraftController < ApplicationController
  before_action :authenticate_user!
  before_action :set_aircraft, only: [:show, :edit, :update, :destroy]

  def index
    @aircraft = Aircraft.all
  end

  def show
  end

  def new
    @aircraft = Aircraft.new
  end

  def create
    @aircraft = Aircraft.new(aircraft_params)

    if @aircraft.save
      redirect_to @aircraft, notice: 'Aircraft was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @aircraft.update(aircraft_params)
      redirect_to @aircraft, notice: 'Aircraft was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @aircraft.destroy
    redirect_to aircraft_index_path, notice: 'Aircraft was successfully deleted.', status: :see_other
  end

  private

  def set_aircraft
    @aircraft = Aircraft.find(params[:id])
  end

  def aircraft_params
    params.require(:aircraft).permit(
      :registration,
      :make_model,
      :max_speed,
      :cruise_speed,
      :fuel_capacity,
      :empty_weight,
      :max_takeoff_weight,
      :year_of_manufacture,
      :engine_type,
      :number_of_engines
    )
  end
end