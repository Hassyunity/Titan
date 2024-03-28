class HomeController < ApplicationController
  def index
    if session[:user_id]
      # L'utilisateur est connecté, afficher le contenu de la page d'accueil
    else
      redirect_to login_path, alert: 'Veuillez vous connecter pour accéder à cette page.'
    end
  end
end
