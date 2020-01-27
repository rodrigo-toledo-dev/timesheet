['rodrigo@rtoledo.inf.br','gi.toneli@gmail.com'].each do |email|
  user = User.create(email: email, password: 'asdqwe123', password_confirmation: 'asdqwe123')
  user.admin!
end

['izabele@lojafilo.com.br','nathali@lojafilo.com.br'].each do |email|
  user = User.create(email: email, password: 'filo123456', password_confirmation: 'filo123456')
  user.employee!
end