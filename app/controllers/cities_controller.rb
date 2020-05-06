class CitiesController < ApplicationController
  def index
    @cities = City.all
  end

  def show
    @city = City.find(params[:id])
    @gossips = []

    City.all.each do |city|
      city.users.where(city_id: params[:id]).each do |user|
        user.gossips.each do |gossip|
          @gossips << gossip
        end
      end
    end
  end
end

  def create
    @city = City.create(name: "", zip_code: "")

  end

  def edit
  end

  def update
  end

  def destroy
  end

