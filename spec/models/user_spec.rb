require 'rails_helper'

describe User do 
	it {should have_and_belong_to_many :foods}
	it {should have_and_belong_to_many :exercises}

end