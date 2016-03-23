class Api::CribsController < ApplicationController

  def index
  	@cribs = Cribb.all
  end

  def create
    owner = Owner.find(crib_params[:owner_id])
    if owner 
      crib = Cribb.new(crib_params)
      if crib.save
        render json: {
          data: {
            message: "Crib successfully created",
            code: 900
          }
        }
      end
    end
  end

  def show
  	@crib = Cribb.find(params[:id])
  end

  def update
    owner = Owner.find(crib_params[:owner_id])
    if owner
      crib = Cribb.find(params[:id])
      if crib.update(crib_params)
        render json: {
          data: {
            message: "Crib successfully updated",
            code: 900
          }
        }
      end
    end 
  end

  def destroy
    crib = Cribb.find(params[:id])
    if crib.destroy
      render json: {
        data: {
          message: "Crib successfully deleted",
          code: 900
        }
      }
    else
      render json: {
        data: {
          message: "Error occured while deleting Crib",
          code: 810
        }
      }
    end
  end

  private

  def crib_params
    params.require(:data).permit(:description, :tenants, :owner_id)
  end
end
