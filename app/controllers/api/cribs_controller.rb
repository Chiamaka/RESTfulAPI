class Api::CribsController < ApplicationController
  def index
  	@cribs = Cribb.all
  end

  def create

  end

  def show
  	@crib = Cribb.find(params[:id]);
  end

  def destroy

  end

  rescue_from ActiveRecord::RecordNotFound do 
    render json:{
        status: 404,
        message: "Tenant does not exist"
      }
  end
end
