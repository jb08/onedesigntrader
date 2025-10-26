class BoatsController < ApplicationController
  def index
    @boats = Boat.all.order(created_at: :desc)
  end
end
