class User < ApplicationRecord
  # Ici, vous pouvez définir les attributs et les validations pour votre modèle User
  has_secure_password
end