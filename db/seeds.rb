User.destroy_all
u1 = User.create :name => 'josh', :password => 'chicken', :admin => true
puts "#{User.count} users"

Note.destroy_all
n1 = Note.create :title => 'Noteworthy', :message => "HAHAHHAA", :image => 'https://placekitten.com/g/200/300'
puts "#{Note.count} notes"