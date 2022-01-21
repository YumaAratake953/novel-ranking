class Api::NovelsController < ApplicationController
  def index
    site1days = Site1Day.all
    AllDay.import(site1days)
  end
end
