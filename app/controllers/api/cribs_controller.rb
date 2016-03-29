class Api::CribsController < ApplicationController

  def index
  	@cribs = Cribb.all
  end

  def create
    owner = Owner.find(crib_params[:owner_id])
    if owner 
      @crib = Cribb.new(crib_params)
      if @crib.save
        response.headers['Location'] = api_crib_url(@crib)
        render :show, status: :created
      end
    end
  end

  def show
  	@crib = Cribb.find(params[:id])
  end

  def update
    owner = Owner.find(crib_params[:owner_id])
    if owner
      @crib = Cribb.find(params[:id])
      if @crib.update(crib_params)
        render :show, status: :ok
      end
    end 
  end

  def destroy
    crib = Cribb.find(params[:id])
    if crib.destroy
      render json: {}, status: :no_content
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
    params.require(:data).require(:attributes).permit(:description, :tenants, :owner_id) 
  end
end
