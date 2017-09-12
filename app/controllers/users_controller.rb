get '/users/new' do
  erb :"/users/new"
end

post '/users' do
  p params
  @user = User.new(params[:user])
  if @user.save
    redirect "/users/#{@user.id}"
  else
   @errors = @user.errors.full_messages
   erb :'/users/new'
 end
end

get '/users/:id' do
  if logged_in?
    @user = User.find(params[:id])
    erb :'/users/show'
  else
    redirect '/login'
  end
end
