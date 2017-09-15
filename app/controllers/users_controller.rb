get '/users/new' do
  erb :"/users/new"
end

post '/users' do
  @user = User.new(params[:user])
  if @user.save
    login
    redirect "/users/#{@user.id}"
  else
   @errors = @user.errors.full_messages
   erb :'/users/new'
 end
end

get '/users/:id' do
  @board = PinterestAdapter.search('cake')
  if logged_in?
    @user = User.find(params[:id])
    erb :'/users/show'
  else
    redirect '/login'
  end
end

delete '/users/:id' do
  @user = User.find(params[:id])
  @user.destroy()
  logout
  redirect '/'
end
