class DashboardController < ApplicationController
  def index
    @set_temp = SetTemp.first || SetTemp.new
    @curr_temp = Temp.discover.values.first.try(:f)
  end
end
