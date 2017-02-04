class ProtectedInformationController < ApplicationController
	def index

		if user_signed_in?
			response.status = 200
			result = {message: "Authenticated"}
		else
			response.status = 401
			result = {error: "Not authenticated"}
		end

		respond_to do |format|
	      format.json { render json: result}
	    end
	end
end
