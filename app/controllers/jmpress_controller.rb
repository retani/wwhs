class JmpressController < ApplicationController

  def index  
		@user_biography = UserBiography.new
		
		slides = [
		{:type => 0 :x => 10, :y => 20}
		]
		
  end

end
