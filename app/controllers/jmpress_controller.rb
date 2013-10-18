class JmpressController < ApplicationController

  def index  
		@user_biography = UserBiography.new

		@slides = [
		
{:type => "page", :slug => "termine", :x => 0, :y => 0},
{:type => "page", :slug => "trailer", :x => -590, :y => 150},
{:type => "page", :slug => "hinweise", :x => 530, :y => 420},
{:type => "page", :slug => "startpunkt", :x => 1060, :y => 660},
{:type => "page", :slug => "society", :x => -510, :y => -270},
{:type => "page", :slug => "manifest", :x => -1030, :y => -435},
{:type => "page", :slug => "regeln", :x => 520, :y => -250},
{:type => "uchronist", :slug => "uchronist-1", :x => -700, :y => 1300},
{:type => "uchronist", :slug => "uchronist-2", :x => -700, :y => 1600},
{:type => "uchronist", :slug => "uchronist-3", :x => -700, :y => 1900},
{:type => "uchronist", :slug => "uchronist-4", :x => -700, :y => 2200},
{:type => "uchronist", :slug => "uchronist-5", :x => -700, :y => 2500},
{:type => "uchronist", :slug => "uchronist-6", :x => -400, :y => 1300},
{:type => "uchronist", :slug => "uchronist-7", :x => -400, :y => 1600},
{:type => "uchronist", :slug => "uchronist-8", :x => -400, :y => 1900},
{:type => "uchronist", :slug => "uchronist-9", :x => -400, :y => 2200},
{:type => "uchronist", :slug => "uchronist-10", :x => -400, :y => 2500},
		
		]
		
  end

end
