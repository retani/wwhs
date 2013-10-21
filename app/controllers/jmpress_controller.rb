class JmpressController < ApplicationController

  def index  
		@user_biography = UserBiography.new

		@slides = [

{:type => "page", :slug => "start", :x => -1250, :y => -100, :rotate => 0, :scale => 1},
{:type => "page", :slug => "tour", :x => -350, :y => -400, :rotate => 12, :scale => 1},
{:type => "page", :slug => "termine", :x => 0, :y => -750, :rotate => 0, :scale => 1},
{:type => "page", :slug => "startpunkt", :x => -540, :y => -840, :rotate => 0, :scale => 1},
{:type => "page", :slug => "hinweise", :x => 480, :y => -580, :rotate => 0, :scale => 1},
{:type => "page", :slug => "generator-hinweis", :x => 200, :y => 110, :rotate => 0, :scale => 1},
{:type => "page", :slug => "society", :x => -1460, :y => 1480, :rotate => 0, :scale => 2.100000000000001},
{:type => "page", :slug => "uchronien", :x => 820, :y => 750, :rotate => 0, :scale => 1},
{:type => "page", :slug => "credits", :x => 200, :y => 200, :rotate => 0, :scale => 1},

]
		
  end

end
