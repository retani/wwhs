class JmpressController < ApplicationController

  def index  
		@user_biography = UserBiography.new

		@slides = [

{:type => "page", :slug => "start", :x => -1300, :y => -100, :rotate => 90, :scale => 0.6},
{:type => "page", :slug => "tour", :x => -100, :y => -650, :rotate => 0, :scale => 2.100000000000001},
{:type => "page", :slug => "termine", :x => -550, :y => -1200, :rotate => 0, :scale => 0.8},
{:type => "page", :slug => "startpunkt", :x => 60, :y => -1190, :rotate => 0, :scale => 1},
{:type => "page", :slug => "hinweise", :x => 580, :y => -1230, :rotate => 0, :scale => 0.9},
{:type => "page", :slug => "transformator-hinweis", :x => -100, :y => 350, :rotate => 0, :scale => 1.9000000000000006},
{:type => "page", :slug => "society", :x => -1460, :y => 1480, :rotate => 0, :scale => 1.2999999999999994},
{:type => "page", :slug => "uchronien", :x => 820, :y => 750, :rotate => 0, :scale => 1},
{:type => "page", :slug => "credits", :x => -1300, :y => -850, :rotate => 90, :scale => 0.30000000000000016},
{:type => "uchronist", :slug => "baki-ullah-khan", :x => -700.0, :y => 1500.0, :rotate => -90, :scale => 0.4},
{:type => "uchronist", :slug => "fred-frohofer", :x => -739.1547869638772, :y => 1747.2135954999578, :rotate => -72, :scale => 0.4},
{:type => "uchronist", :slug => "esther-reinhardt", :x => -852.7864045000421, :y => 1970.2282018339786, :rotate => -54, :scale => 0.4},
{:type => "uchronist", :slug => "prof-dr-dirk-helbing", :x => -1029.7717981660214, :y => 2147.2135954999576, :rotate => -36, :scale => 0.4},
{:type => "uchronist", :slug => "chantal-wicki", :x => -1252.786404500042, :y => 2260.845213036123, :rotate => -18, :scale => 0.4},
{:type => "uchronist", :slug => "laurent", :x => -1500.0, :y => 2300.0, :rotate => 0, :scale => 0.4},
{:type => "uchronist", :slug => "martin-carl", :x => -1747.2135954999578, :y => 2260.845213036123, :rotate => 18, :scale => 0.4},
{:type => "uchronist", :slug => "niat", :x => -1970.2282018339783, :y => 2147.213595499958, :rotate => 36, :scale => 0.4},
{:type => "uchronist", :slug => "olaf-brunner", :x => -2147.2135954999576, :y => 1970.2282018339786, :rotate => 54, :scale => 0.4},
{:type => "uchronist", :slug => "reto-schneider", :x => -2260.845213036123, :y => 1747.213595499958, :rotate => 72, :scale => 0.4},
{:type => "uchronist", :slug => "richard-olsen", :x => -2300.0, :y => 1500.0, :rotate => 90, :scale => 0.4},
{:type => "uchronist", :slug => "ursula-knecht", :x => -2260.845213036123, :y => 1252.7864045000417, :rotate => 108, :scale => 0.4},
{:type => "uchronist", :slug => "jazzmin", :x => -2147.213595499958, :y => 1029.7717981660217, :rotate => 126, :scale => 0.4},
{:type => "uchronist", :slug => "harald-bollinger", :x => -1970.2282018339786, :y => 852.7864045000422, :rotate => 144, :scale => 0.4},
{:type => "uchronist", :slug => "oli-wolf", :x => -1747.213595499958, :y => 739.1547869638772, :rotate => 162, :scale => 0.4},
{:type => "uchronist", :slug => "matthias-gnehm", :x => -1500.0000000000002, :y => 700.0, :rotate => 180, :scale => 0.4},
{:type => "uchronist", :slug => "saidou-bah", :x => -1252.7864045000422, :y => 739.1547869638771, :rotate => 198, :scale => 0.4},
{:type => "uchronist", :slug => "jeanette-fischer", :x => -1029.7717981660217, :y => 852.786404500042, :rotate => 216, :scale => 0.4},
{:type => "uchronist", :slug => "janina-woods", :x => -852.7864045000422, :y => 1029.7717981660214, :rotate => 234, :scale => 0.4},
#{:type => "uchronia", :slug => "undefined", :x => undefined, :y => undefined, :rotate => 46, :scale => 0.1},
#{:type => "uchronia", :slug => "undefined", :x => undefined, :y => undefined, :rotate => 44, :scale => 0.1},
#{:type => "uchronia", :slug => "undefined", :x => undefined, :y => undefined, :rotate => 32, :scale => 0.1},
#{:type => "uchronia", :slug => "undefined", :x => undefined, :y => undefined, :rotate => 56, :scale => 0.1},
#{:type => "uchronia", :slug => "undefined", :x => undefined, :y => undefined, :rotate => 21, :scale => 0.1},
#{:type => "uchronia", :slug => "undefined", :x => undefined, :y => undefined, :rotate => 72, :scale => 0.1},

]
		
  end

end
