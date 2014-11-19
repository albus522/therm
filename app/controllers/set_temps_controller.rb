class SetTempsController < ApplicationController
  def create
    @set_temp = SetTemp.new(set_temp_params)
    if @set_temp.save
      flash[:success] = "Temp set"
      redirect_to root_path
    else
      render 'dashboard/index'
    end
  end

  def update
    @set_temp = SetTemp.first
    if @set_temp.update_attributes(set_temp_params)
      flash[:success] = "Temp set"
      redirect_to root_path
    else
      render 'dashboard/index'
    end
  end

  protected

  def set_temp_params
    params.require(:set_temp).permit(:mode, :temp)
  end
end
