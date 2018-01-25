class PagesController < ApplicationController
  def zu_und_absagen
    @guests = Guest.all
  end


end
