# spec/controllers/users_controller_spec.rb

require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe 'GET #show' do
    it 'renders the show template' do
      user = FactoryBot.create(:user) # Utilisation de FactoryBot pour créer un utilisateur fictif
      get :show, params: { id: user.id }
      expect(response).to render_template(:show)
    end
  end
end
