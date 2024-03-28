def create
  user = User.find_by(email: params[:email])
  if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect_to home_path, notice: 'Connexion réussie !'
  else
    flash.now[:alert] = 'Email ou mot de passe incorrect.'
    render :new
  end
end
