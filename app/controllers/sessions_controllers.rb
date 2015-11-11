helpers SessionHelper


post '/signin' do
	@user = User.authenticate(params[:email], params[:password])
	if @user
		session[:user_id] = @user.id
		redirect to "/users/#{@user.id}"
	else
		@message = "Email or password is invalid"
		erb :"static/index"
	end		
end