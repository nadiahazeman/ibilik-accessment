helpers SessionHelper

#render new form
get "/properties/new" do
	@user = current_user
	erb :"/properties/new"
end

#create new property listing

post '/properties' do
	@user = current_user
	@property = Property.new(params[:property])
	if @property.save
		redirect to "/properties/#{@property.id}"
	else
		@error_message = "Please populate all fields!"
		erb :'/properties/new'
	end
end 

#show the property
get '/properties/:id' do
    @user = current_user
    
    @properties = Property.where(user_id: @user.id)
    byebug
    @alert = "You do not have any listed properties"

    erb :'/properties/show'
end
