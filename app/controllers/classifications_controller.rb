class ClassificationsController < ApplicationController

  def show
    @classifcation = Classification.find(params[:id])
  end
end
