FactoryBot.define do
  factory :user do
    nom { 'Nom de test' }
    email { 'test@example.com' }
    password { 'password123' }
    # Définissez d'autres attributs de votre modèle user selon vos besoins
  end
end
