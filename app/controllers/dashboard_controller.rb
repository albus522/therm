class DashboardController < ApplicationController
  def index
    @set_temp = SetTemp.first || SetTemp.new
    @reading = Reading.order(created_at: :desc).first
    expires_now
  end
end
