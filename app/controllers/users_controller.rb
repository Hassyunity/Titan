class UsersController < ApplicationController
  # Autres actions du contrôleur

  def activate
    user = User.find(params[:id])
    user.update(active: true)
    redirect_to admin_users_path, notice: 'Utilisateur activé avec succès.'
  end

  def deactivate
    user = User.find(params[:id])
    user.update(active: false)
    redirect_to admin_users_path, notice: 'Utilisateur désactivé avec succès.'
  end
end
