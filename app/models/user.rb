class User < ActiveRecord::Base

def full_name
	return first_name + ' ' + last_name
end

validates :first_name, :presence => true
validates :last_name, :presence => true
validates :email_address, :presence => true 

end
