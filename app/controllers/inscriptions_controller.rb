class InscriptionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # Redirection ou traitement après la création de l'utilisateur
      redirect_to root_path, notice: "Inscription réussie !"
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:nom, :email, :password, :password_confirmation)
  end
end
