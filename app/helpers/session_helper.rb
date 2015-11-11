module SessionHelper

def logout_user
	session.delete :user
end	

end	