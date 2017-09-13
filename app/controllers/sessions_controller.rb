get '/login' do
  erb :'/sessions/login'
end

post '/login' do
  @user = User.find_by(email: params[:email])

  if @user && @user.authenticate(params[:password])
    login
    redirect "/users/#{@user.id}"
  else
    # give them errors
    @errors = ["Email password combo not found"]
    erb :'/sessions/login'
  end
end

get '/logout' do
  logout
end

# is there a way to reset passwords?
# how?
