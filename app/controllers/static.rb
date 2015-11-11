get '/' do
  erb :"static/index"
end

get '/login' do
	erb :"static/login"
end	

get '/signup' do
	erb :"static/signup"
end

post '/signup' do
	@new_user = User.new(params[:user])
	if @new_user.save!
		session[:user_id] = @new_user.id
		redirect '/dashboard'
	else
		erb :"static/signup"
	end
end			