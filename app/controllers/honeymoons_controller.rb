class HoneymoonsController < ApplicationController
  before_action :check_for_lockup
  before_action :set_honeymoon, only: [:show, :edit, :update, :destroy]

  def index
    @honeymoons= Honeymoon.all
    @zusagen = Honeymoon.where(coming: true).count
    @absagen = Honeymoon.where(coming: false).count
    # @personen = Honeymoon.sum(:additional)
    @caravan = Honeymoon.where(caravan: true).count
    @tent = Honeymoon.where(tent: true).count
    @ownbus = Honeymoon.where(ownbus: true).count
  end

  def new
    @honeymoon = Honeymoon.new
  end

  def create
    Honeymoon.create(honeymoon_params)
    redirect_to erfolg_path
  end

  def update
    @honeymoon.update(honeymoon_params)
    redirect_to honeymoons_path
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

