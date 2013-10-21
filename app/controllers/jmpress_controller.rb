class JmpressController < ApplicationController

  def index  
		@user_biography = UserBiography.new

		@slides = [

{:type => "page", :slug => "start", :x => -1250, :y => -100, :rotate => 0, :scale => 1},
{:type => "page", :slug => "termine", :x => 0, :y => -750, :rotate => 0, :scale => 1},
{:type => "page", :slug => "startpunkt", :x => -540, :y => -840, :rotate => 0, :scale => 1},
{:type => "page", :slug => "hinweise", :x => 480, :y => -580, :rotate => 0, :scale => 1},
{:type => "page", :slug => "society", :x => -1460, :y => 1480, :rotate => 0, :scale => 2.100000000000001},
{:type => "page", :slug => "uchronien", :x => 820, :y => 750, :rotate => 0, :scale => 1},
{:type => "page", :slug => "regeln", :x => 770, :y => 1200, :rotate => 0, :scale => 1},
{:type => "uchronist", :slug => "uchronist-1", :x => -700.0, :y => 1500.0, :rotate => -90, :scale => 0.4},
{:type => "uchronist", :slug => "uchronist-2", :x => -758.25291634657, :y => 1799.6852747327296, :rotate => -68, :scale => 0.4},
{:type => "uchronist", :slug => "uchronist-3", :x => -924.528159729079, :y => 2055.7266963671977, :rotate => -46, :scale => 0.4},
{:type => "uchronist", :slug => "uchronist-4", :x => -1174.6106855393596, :y => 2230.8363661140806, :rotate => -24, :scale => 0.4},
{:type => "uchronist", :slug => "uchronist-5", :x => -1472.0804026379992, :y => 2299.5126616152766, :rotate => -2, :scale => 0.4},
{:type => "uchronist", :slug => "uchronist-6", :x => -1773.616114660535, :y => 2251.754096628727, :rotate => 20, :scale => 0.4},
{:type => "uchronist", :slug => "uchronist-7", :x => -2035.3044850870863, :y => 2094.5158603819154, :rotate => 42, :scale => 0.4},
{:type => "uchronist", :slug => "uchronist-8", :x => -2219.0352370393334, :y => 1850.6969174312621, :rotate => 64, :scale => 0.4},
{:type => "uchronist", :slug => "uchronist-9", :x => -2298.0512402078593, :y => 1555.8051789953004, :rotate => 86, :scale => 0.4},
{:type => "uchronist", :slug => "uchronist-10", :x => -2260.845213036123, :y => 1252.7864045000417, :rotate => 108, :scale => 0.4},
{:type => "uchronist", :slug => "uchronist-10--2", :x => -2112.8355544951824, :y => 985.7699122507686, :rotate => 130, :scale => 0.4},
{:type => "uchronist", :slug => "uchronist-11", :x => -1875.5772502287127, :y => 793.6419257128584, :rotate => 152, :scale => 0.4},
{:type => "uchronist", :slug => "uchronist-12", :x => -1583.6227706141233, :y => 704.3824837053813, :rotate => 174, :scale => 0.4},
{:type => "uchronist", :slug => "uchronist-13", :x => -1279.4901153464011, :y => 730.9906432493448, :rotate => 196, :scale => 0.4},
{:type => "uchronist", :slug => "uchronist-14", :x => -1007.4708197394739, :y => 869.5913971146222, :rotate => 218, :scale => 0.4},
{:type => "uchronist", :slug => "uchronist-15", :x => -807.1796769724493, :y => 1099.9999999999995, :rotate => 240, :scale => 0.4},
		]
		
  end

end
