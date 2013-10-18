class JmpressController < ApplicationController

  def index  
		@user_biography = UserBiography.new

		@slides = [
		
{:type => "page", :slug => "termine", :x => 0, :y => 0, :rotate => 0, :scale => 1},
{:type => "page", :slug => "trailer", :x => -590, :y => 150, :rotate => 0, :scale => 1},
{:type => "page", :slug => "hinweise", :x => 480, :y => 370, :rotate => 0, :scale => 1},
{:type => "page", :slug => "startpunkt", :x => 10, :y => 360, :rotate => 0, :scale => 1},
{:type => "page", :slug => "society", :x => -510, :y => -220, :rotate => 0, :scale => 1},
{:type => "page", :slug => "manifest", :x => -1030, :y => -435, :rotate => 0, :scale => 1},
{:type => "page", :slug => "regeln", :x => 470, :y => -200, :rotate => 0, :scale => 1},
{:type => "uchronist", :slug => "uchronist-1", :x => 500, :y => -650, :rotate => 90, :scale => 0.5},
{:type => "uchronist", :slug => "uchronist-2", :x => 900, :y => -650, :rotate => 90, :scale => 0.5},
{:type => "uchronist", :slug => "uchronist-3", :x => 910, :y => -310, :rotate => 90, :scale => 0.5},
{:type => "uchronist", :slug => "uchronist-4", :x => 910, :y => 20, :rotate => 90, :scale => 0.5},
{:type => "uchronist", :slug => "uchronist-5", :x => 900, :y => 350, :rotate => 90, :scale => 0.5},
{:type => "uchronist", :slug => "uchronist-6", :x => 900, :y => 720, :rotate => 90, :scale => 0.5},
{:type => "uchronist", :slug => "uchronist-7", :x => 500, :y => 1100, :rotate => 90, :scale => 0.5},
{:type => "uchronist", :slug => "uchronist-8", :x => -200, :y => 1100, :rotate => 90, :scale => 0.5},
{:type => "uchronist", :slug => "uchronist-9", :x => -900, :y => 1100, :rotate => 90, :scale => 0.5},
{:type => "uchronist", :slug => "uchronist-10", :x => -1000, :y => -50, :rotate => -90, :scale => 0.5},
{:type => "uchronist", :slug => "uchronist-11", :x => 900, :y => 1100, :rotate => 90, :scale => 0.5},
{:type => "uchronist", :slug => "uchronist-12", :x => 150, :y => 1100, :rotate => 90, :scale => 0.5},
{:type => "uchronist", :slug => "uchronist-13", :x => -550, :y => 1100, :rotate => 90, :scale => 0.5},
{:type => "uchronist", :slug => "uchronist-14", :x => -1000, :y => 300, :rotate => -90, :scale => 0.5},
{:type => "uchronist", :slug => "uchronist-15", :x => -1000, :y => 700, :rotate => -90, :scale => 0.5},
		]
		
  end

end
