get '/cakerequests' do
  erb :"cakerequests/new"
end

post '/cakerequests' do
  @cakerequest = Cakerequest.new(params[:cakerequest])
  @cakerequest.user_id = current_user.id
  if @cakerequest.save
    erb :"/cakerequests/show"
  else
    @errors = @cakerequest.errors.full_messages
  end
end

get '/cakerequests/:id' do
  erb :'/cakerequests/show'
end
