
ActiveRecord::Base.logger = Logger.new(STDOUT)

User.destroy_all
Bok.destroy_all

['Nico', 'Dani', 'Tere', 'Omi', 'Paula', 'Malex'].each do |name|
  User.create!(:name => name, :login => "#{name.downcase}@plataformabooka.net", 
    :password => 'entrar', :password_confirmation => 'entrar', :rol => 'admin')
end

User.create!(:name => 'Test', :login => 'test@plataformabooka.net',
  :password => 'entrar', :password_confirmation => 'entrar')

site = Bok.new(:title => 'Plataforma booka', :bok_type => 'Site', :user_id => 1, :position => 1)
site.save(false)


['Plataforma booka', 'Jardines interfaz', 'Arquitectura y género'].each do |name|
  project = Bok.create(:title => name, :bok_type => 'Project', :parent => site, :position => 1, :user_id => 1)

  ['Call', 'Indice'].each do |type|
    Bok.create(:title => name, :bok_type => type, :parent => project, :project => project,
      :user_id => 1, :position => 1)
  end

  archives = Bok.create(:title => name, :bok_type => 'Archives', :parent => project, :project => project,
      :user_id => 1, :position => 1)
  
  1.upto(5) do |num|
    Bok.create(:title => "Documento #{num}", :bok_type => 'Document', :parent => archives,
      :project => project, :user_id => 1, :position => num)
  end
  Bok.create(:title => 'Documento de prueba', :bok_type => 'Document', :parent => archives, :project => project, :user_id => 1, :position => 2)
  Bok.create(:title => 'Jugando con booka', :bok_type => 'Document', :parent => archives, :project => project, :user_id => 1, :position => 1)
end

