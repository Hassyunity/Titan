class DashboardController < ApplicationController
  def index
    @user = User.all # Remplacez User.all par votre logique pour obtenir les utilisateurs
  end
end
