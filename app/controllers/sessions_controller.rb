get '/login' do
  erb :'/sessions/login'
end

post '/login' do
  @user = User.find_by(email: params[:email])

  if @user && @user.authenticate(params[:password])
    # log them in
    p "hello"
  else
    # give them errors
    p "errors"
  end
end

# logout
