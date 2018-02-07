class GuestsController < ApplicationController
    before_action :check_for_lockup

  before_action :set_guest, only: [:show, :edit, :update, :destroy]

  def index
    @guests = Guest.all
  end


  def new
    @guest = Guest.new
  end

  def create
    Guest.create(guest_params)
    redirect_to erfolg_path
  end

  def update
    @guest.update(guest_params)
    @guest.save
    if @guest.save
      redirect_to guests_path, notice: "successfully updated."
    else
      render :new, alert: "Error beim Vorgang"
    end

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
    params.require(:guest).permit(:name, :email, :coming, :excuse, :adult, :child, :hotel)
  end
end
