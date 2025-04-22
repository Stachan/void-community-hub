class RostersController < ApplicationController
  def index
    @rosters = Roster.all
  end

  def show
    @roster = Roster.find(params[:id])
  end

  def create
    @roster = Roster.new(roster_params)
    @roster.save
  end
end

private

def roster_params
  params.require(:name, :points_limit)
end
