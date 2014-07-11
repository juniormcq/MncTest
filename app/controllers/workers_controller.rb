class WorkersController < ApplicationController
  def index
  end

  def show
  	@S = Worker.find(params[:id])
    respond_to do |format|
      format.json { render json: @S}
     end
  end

  def new
  end
end
