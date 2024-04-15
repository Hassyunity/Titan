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

  def show
    @user = current_user # Assurez-vous que vous avez une méthode current_user qui récupère l'utilisateur actuellement connecté
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to @user, notice: 'Profil mis à jour avec succès.'
    else
      render :edit
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:nom, :email)
  end
end
