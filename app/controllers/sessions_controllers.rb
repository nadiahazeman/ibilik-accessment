helpers SessionHelper


post '/signin' do
	@user = User.authenticate(params[:email], params[:password])
	if @user
		session[:user_id] = @user.id
		redirect to "/profile/#{@user.id}"
	else
		@message = "Email or password is invalid"
		erb :"static/login"
	end		
end

get "/profile/:id" do
	@user = current_user
	@properties = Property.all
	erb :"static/profile"
end	

get '/logout' do
	logout_user
	redirect to '/'
end	

