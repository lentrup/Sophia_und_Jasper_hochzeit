class GuestsController < ApplicationController
  before_action :set_guest, only: [:show, :edit, :update, :destroy]

  def index
    @guests = Guest.all
  end

  def show
  end

  def new
    @guest = Guest.new
  end

  def create
    @guest = Guest.create(guest_params)
    @guest.save
    redirect_to guest_path(@guest)
  end

  def edit
  end

  def update
    @guest.update(guest_params)
    redirect_to guest_path(@guest)
  end

  def destroy
    @guest.destroy
    redirect_to guests_path
  end

  private

  def set_guest
    @guest = Guest.find(params[:id])
  end

  def guest_params
    params.require(:guest).permit(:name, :email, :coming, :excuse, :adult, :child)
  end
end
