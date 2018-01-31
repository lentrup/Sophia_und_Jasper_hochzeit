class HoneymoonsController < ApplicationController
  before_action :set_honeymoon, only: [:show, :edit, :update, :destroy]

  def index
    @honeymoons= Honeymoon.all
  end

  def new
    @honeymoon = Honeymoon.new
  end

  def create
    Honeymoon.create(honeymoon_params)
    redirect_to root_path
  end

  def update
    @honeymoon.update(honeymoon_params)
    redirect_to honeymoon_path(@honeymoon)
  end

  def destroy
    @honeymoon.destroy
    redirect_to honeymoons_path
  end

  private

  def set_honeymoon
    @honeymoon = Honeymoon.find(params[:id])
  end

  def honeymoon_params
    params.require(:honeymoon).permit(:name, :email, :coming, :additional, :comment, :caravan, :tent, :ownbus)
  end
end

