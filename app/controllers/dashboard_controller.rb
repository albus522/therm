class DashboardController < ApplicationController
  def index
    @set_temp = SetTemp.first || SetTemp.new
  end
end
