helpers SessionHelper

#render new form
get "/properties/new" do
	erb :"/properties/new"
end

#create new property listing

post '/properties' do
	@property = Property.new(params[:property])
	if @property.save
		redirect to "/properties/#{@property.id}"
	else
		@error_message = "Please populate all fields!"
		erb :'properties/new'
	end
end 

#show the property
get "/properties/:id" do
	@property = Property.find(params[:id])
	@user = User.find_by(id: @property.user_id)
	erb :'properties/show'
end	





