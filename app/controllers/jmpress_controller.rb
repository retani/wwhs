class JmpressController < ApplicationController

  def index  
		@user_biography = UserBiography.new

		@slides = [

{:type => "page", :slug => "start", :x => -1300, :y => -100, :rotate => 90, :scale => 0.6},
{:type => "page", :slug => "tour", :x => -100, :y => -650, :rotate => 0, :scale => 2.100000000000001},
{:type => "page", :slug => "termine", :x => -550, :y => -1200, :rotate => 0, :scale => 0.8},
{:type => "page", :slug => "startpunkt", :x => 10, :y => -1190, :rotate => 0, :scale => 1},
{:type => "page", :slug => "hinweise", :x => 680, :y => -1080, :rotate => 0, :scale => 0.9},
{:type => "page", :slug => "transformator-hinweis", :x => -100, :y => 150, :rotate => 0, :scale => 1.9000000000000006},
{:type => "page", :slug => "society", :x => -1460, :y => 1480, :rotate => 0, :scale => 1.2999999999999994},
{:type => "page", :slug => "uchronien", :x => 820, :y => 750, :rotate => 0, :scale => 1},
{:type => "page", :slug => "credits", :x => -1450, :y => -950, :rotate => 90, :scale => 0.6},
{:type => "uchronia", :slug => "2", :x => 1200, :y => 500, :rotate => 192, :scale => 0.20000000000000004},
{:type => "uchronia", :slug => "17", :x => -1800, :y => -950, :rotate => -18, :scale => 0.4},
{:type => "uchronia", :slug => "19", :x => 1050, :y => 1550, :rotate => -18, :scale => -0.4},
{:type => "uchronia", :slug => "25", :x => 2050, :y => 1550, :rotate => -18, :scale => 0.4},
{:type => "uchronia", :slug => "37", :x => -3300, :y => -1050, :rotate => -18, :scale => -0.4},
{:type => "uchronia", :slug => "61", :x => -650, :y => 2100, :rotate => 6, :scale => 0.4},
{:type => "uchronia", :slug => "87", :x => -2500, :y => 900, :rotate => -150, :scale => -0.5},
{:type => "uchronia", :slug => "110", :x => 350, :y => -1550, :rotate => -168, :scale => 0.4},
{:type => "uchronist", :slug => "matthias-gnehm", :x => -800.0, :y => 1500.0, :rotate => -90.0, :scale => 0.34},
{:type => "uchronist", :slug => "saidouh-bah", :x => -837.9279308095557, :y => 1727.2896284432784, :rotate => -71.05263157894737, :scale => 0.34},
{:type => "uchronist", :slug => "baki-ullah-khan", :x => -947.6016434225245, :y => 1929.9488988827675, :rotate => -52.10526315789474, :scale => 0.34},
{:type => "uchronist", :slug => "fred-frohofer", :x => -1117.136289314301, :y => 2086.01653478377, :rotate => -33.15789473684211, :scale => 0.34},
{:type => "uchronist", :slug => "jeanette-fischer", :x => -1328.1601590014407, :y => 2178.580186157531, :rotate => -14.21052631578948, :scale => 0.34},
{:type => "uchronist", :slug => "prof-dr-dirk-helbing", :x => -1557.8055418306326, :y => 2197.6091451046686, :rotate => 4.73684210526315, :scale => 0.34},
{:type => "uchronist", :slug => "chantal-wicki", :x => -1781.1867972570785, :y => 2141.0413286585404, :rotate => 23.68421052631578, :scale => 0.34},
{:type => "uchronist", :slug => "esther-reinhardt", :x => -1974.0971001380185, :y => 2015.0067374711923, :rotate => 42.63157894736841, :scale => 0.34},
{:type => "uchronist", :slug => "laurent", :x => -2115.631625844542, :y => 1833.1631751259515, :rotate => 61.57894736842104, :scale => 0.34},
{:type => "uchronist", :slug => "martin-carl", :x => -2190.4529123819057, :y => 1615.2162131965138, :rotate => 80.52631578947367, :scale => 0.34},
{:type => "uchronist", :slug => "olaf-brunner", :x => -2190.4529123819057, :y => 1384.7837868034862, :rotate => 99.4736842105263, :scale => 0.34},
{:type => "uchronist", :slug => "reto-schneider", :x => -2115.6316258445427, :y => 1166.836824874049, :rotate => 118.42105263157893, :scale => 0.34},
{:type => "uchronist", :slug => "richard-olsen", :x => -1974.097100138019, :y => 984.9932625288081, :rotate => 137.36842105263156, :scale => 0.34},
{:type => "uchronist", :slug => "jazzmin", :x => -1781.186797257079, :y => 858.9586713414599, :rotate => 156.3157894736842, :scale => 0.34},
{:type => "uchronist", :slug => "harald-bollinger", :x => -1557.8055418306328, :y => 802.3908548953311, :rotate => 175.26315789473682, :scale => 0.34},
{:type => "uchronist", :slug => "oli-wolf", :x => -1328.160159001441, :y => 821.4198138424687, :rotate => 194.21052631578948, :scale => 0.34},
{:type => "uchronist", :slug => "ursula-knecht", :x => -1117.1362893143014, :y => 913.9834652162299, :rotate => 213.15789473684208, :scale => 0.34},
{:type => "uchronist", :slug => "janina-woods", :x => -947.601643422525, :y => 1070.0511011172318, :rotate => 232.10526315789468, :scale => 0.34},
{:type => "uchronist", :slug => "niat", :x => -837.9279308095557, :y => 1272.7103715567214, :rotate => 251.05263157894734, :scale => 0.34}

]
		
  end

end
