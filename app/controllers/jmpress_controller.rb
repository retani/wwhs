class JmpressController < ApplicationController

  def index  
		@user_biography = UserBiography.new

		@slides = [
		
{:type => "page", :slug => "termine", :x => 0, :y => -150, :rotate => 0, :scale => 1},
{:type => "page", :slug => "trailer", :x => -590, :y => 150, :rotate => 0, :scale => 1},
{:type => "page", :slug => "hinweise", :x => 480, :y => 320, :rotate => 0, :scale => 1},
{:type => "page", :slug => "startpunkt", :x => -40, :y => 560, :rotate => 0, :scale => 1},
{:type => "page", :slug => "society", :x => -610, :y => -220, :rotate => 0, :scale => 1},
{:type => "page", :slug => "manifest", :x => 470, :y => 665, :rotate => 0, :scale => 1},
{:type => "page", :slug => "regeln", :x => 470, :y => -100, :rotate => 0, :scale => 1},
{:type => "uchronist", :slug => "uchronist-1", :x => -1050, :y => 350, :rotate => 270, :scale => 0.5},
{:type => "uchronist", :slug => "uchronist-2", :x => 900, :y => -650, :rotate => 90, :scale => 0.5},
{:type => "uchronist", :slug => "uchronist-3", :x => 910, :y => -360, :rotate => 90, :scale => 0.5},
{:type => "uchronist", :slug => "uchronist-4", :x => 910, :y => -80, :rotate => 90, :scale => 0.5},
{:type => "uchronist", :slug => "uchronist-5", :x => 900, :y => 200, :rotate => 90, :scale => 0.5},
{:type => "uchronist", :slug => "uchronist-6", :x => 900, :y => 470, :rotate => 90, :scale => 0.5},
{:type => "uchronist", :slug => "uchronist-7", :x => 850, :y => 1050, :rotate => 180, :scale => 0.5},
{:type => "uchronist", :slug => "uchronist-8", :x => 250, :y => 1050, :rotate => 180, :scale => 0.5},
{:type => "uchronist", :slug => "uchronist-9", :x => -350, :y => 1050, :rotate => 180, :scale => 0.5},
{:type => "uchronist", :slug => "uchronist-10", :x => -1050, :y => 650, :rotate => -90, :scale => 0.5},
{:type => "uchronist", :slug => "uchronist-11", :x => 900, :y => 750, :rotate => 90, :scale => 0.5},
{:type => "uchronist", :slug => "uchronist-12", :x => 550, :y => 1050, :rotate => 180, :scale => 0.5},
{:type => "uchronist", :slug => "uchronist-13", :x => -50, :y => 1050, :rotate => 180, :scale => 0.5},
{:type => "uchronist", :slug => "uchronist-14", :x => -950, :y => 950, :rotate => -138, :scale => 0.5},
{:type => "uchronist", :slug => "uchronist-15", :x => -650, :y => 1050, :rotate => -180, :scale => 0.5},
		]
		
  end

end
