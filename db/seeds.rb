
ActiveRecord::Base.logger = Logger.new(STDOUT)

['Dani', 'Tere', 'Omi', 'Paula', 'Malex'].each do |name|
  User.create!(:name => name, :login => "#{name.downcase}@plataformabooka.net", 
    :password => 'entrar', :password_confirmation => 'entrar', :rol => 'admin')
end

User.create!(:name => 'Test', :login => 'test@plataformabooka.net',
    :password => 'entrar', :password_confirmation => 'entrar')

site = Bok.new(:title => 'Plataforma booka', :bok_type => 'Site', :user_id => 1, :position => 1)
site.save(false)

project = Bok.create(:title => 'Plataforma booka', :bok_type => 'Project', :parent => site, :position => 1, :user_id => 1)
Bok.create(:title => 'Jugando con booka', :bok_type => 'Document', :parent => project, :user_id => 1, :position => 1)
Bok.create(:title => 'Documento de prueba', :bok_type => 'Document', :parent => project, :user_id => 1, :position => 2)

Bok.create(:title => 'Jardines interfaz', :bok_type => 'Project', :parent => site, :position => 2, :user_id => 1)
Bok.create(:title => 'Arquitectura y género', :bok_type => 'Project', :parent => site, :position => 3, :user_id => 1)
