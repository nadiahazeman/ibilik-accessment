#render new comment
get '/properties/:id/comments/new' do
	@property = Property.find_by(id: params[:id])
	@user = current_user
	erb :'comments/new'
end