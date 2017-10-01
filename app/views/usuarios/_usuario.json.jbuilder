json.extract! usuario, :id, :primeironome, :sobrenome, :email, :senha, :datanasc, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
