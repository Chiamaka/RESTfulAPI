class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session,
  	:if => Proc.new{ |c| c.request.format == "application/json"}

  #skip_before_filter  :verify_authenticity_token
  #respond_to :json

  rescue_from ActiveRecord::RecordNotFound, with: :not_found

  private
  # Function for when a record is not found.. {{Only for finding a record NOT saving}}
  def not_found(e)
		render json:{
				error: {
					message: e.message,
					code: 800
			}
		}, status: :not_found
	end
end
