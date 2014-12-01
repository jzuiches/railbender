get '/' do
  # render home page
 #TODO: Show all users if user is signed in
 @users = User.all
 # redirect to '/' unless session[:user_id]

  erb :index
end

#----------- SESSIONS -----------

get '/sessions/new' do

  erb :sign_in
end

post '/sessions' do
   @user = User.find_by_email(params[:email]) && User.authenticate(params[:email], params[:password])
  if @user
    session[:user_id] = @user.id
    redirect to '/'
  else
    @error = "login failed"
    erb :sign_in
  end
end

delete '/sessions/:id' do
  session.clear
  redirect '/'
  # sign-out -- invoked
end

#----------- USERS -----------

get '/users/new' do
  # render sign-up page

  erb :sign_up
end

post '/users' do
  # sign-up a new user
  user = User.new(params[:user])
  if user.save
      session[:user_id] = user.id
      redirect("/")
  else

    session[:error] = user.errors.messages
    redirect("/users/new")
  end
end
