module SessionHelper

	def logout_user
		session.delete :user
	end

	def current_user
		if session[:user_id]
			User.find(session[:user_id])
		else
		nil
		end
	end

	def find_property
		Property.find_by(id: params[:id])
	end
end		
			