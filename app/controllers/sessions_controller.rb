# app/controllers/sessions_controller.rb
class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to dashboard_path # Redirige vers le tableau de bord après connexion réussie
    else
      flash[:alert] = 'Adresse email ou mot de passe invalide'
      redirect_to login_path # Redirige vers la page de connexion en cas d'échec de connexion
    end
  end

  # Déconnexion
  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
