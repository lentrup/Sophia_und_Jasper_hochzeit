class GuestsController < ApplicationController
  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find(params[:id])
  end

  def create
    @guest = Restaurant.new(guest_params)
    @guest.save
    redirect_to guest_path(@guest)

  def edit
    @guest = Guest.find(params[:id])
  end

  def update
    @guest = Guest.find(params[:id])
    @user.update(guest_params)
    redirect_to guest_path(@guest)
  end

  def destroy
    @guest = Guest.find(params[:id])
    @Guest.destroy(guest_params)
    redirect_to guests_path
  end

  private

  def guest_params
    params.require(:guest).permit(:name, :email, :coming, :excuse, :adult, :child)
  end
end
