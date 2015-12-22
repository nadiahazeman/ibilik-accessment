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

#show property listings
get '/properties/:id' do
	@property = Property.find(params[:id])
	@user = User.find_by(id: @property.user_id)
	erb :'/properties/show'
end


#render the edit property form
get '/properties/:id/edit' do
	@property = Property.find(params[:id])
	erb :'/properties/edit'
end

#update the property
#patch '/properties/:id' do


#delete the property

