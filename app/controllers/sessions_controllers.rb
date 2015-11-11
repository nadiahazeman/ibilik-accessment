helpers SessionHelper


post '/signin' do
	@user = User.authenticate(params[:email], params[:password])
	byebug
	if @user
		session[:user_id] = @user.id
		redirect to "/profile/#{@user.id}"
	else
		@message = "Email or password is invalid"
		erb :"static/index"
	end		
end

get "/profile/:id" do
	erb :"static/profile"
end	

get '/logout' do
end	