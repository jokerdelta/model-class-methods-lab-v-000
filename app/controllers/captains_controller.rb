class CaptainsController < ApplicationController

  def show
    @captain = Captain.find(params[:id])
  end

end
