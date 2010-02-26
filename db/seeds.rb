

User.create(:name => 'Test')

project = Bok.create!(:title => 'Play booka', :bok_type => 'Project', :user_id => 1)
Bok.create!(:title => 'Welcome to play booka', :bok_type => 'Document', :parent => project, :user_id => 1)