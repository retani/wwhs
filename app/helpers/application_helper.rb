#require 'userAgent'

module ApplicationHelper

  def formatize text
    return "" if text.nil?
    
    text = text.gsub(/<image (\S+)>/) {
      begin
        image = Image.find("#{$1}")
	      image_tag image.image.url(:thumb), :title => (image.title if image.title) 
      rescue
        "<strong>Image with id #{$1} not found.</strong>"
      end      
    }

		link_list = ""
		uchronias = Uchronia.all.sort_by { |u| u.slug.to_i }

	  uchronias.each_with_index do |u, i|
  	 link_list += link_to u.title, '#/' + u.slug
  	 link_list += ", " unless i == uchronias.count - 1
    end  
		
    text = text.gsub(/<uchronia_links>/) {
			link_list    
		}
		
	user_agent = UserAgent.parse(request.user_agent)
	if (user_agent.browser == "Chrome"  && user_agent.version > "29") || (user_agent.browser == "Firefox" && user_agent.version > "5") || (user_agent.browser == "Safari" && user_agent.version > "5")
		logger.info "youtube HTML5 video for " + user_agent
	else
		text =  text.gsub(/&html5=1/) {
				""    
			}
	end
	
	 if @kiosk
	 	text = text.gsub(/<div[^<]*?id="video-trailer"[^<]*?>.*?<\/div>/m,
	 		'<video controls="controls" preload="auto">
  				<source src="/assets/trailer.mp4" />
			</video>')
	 end
	 	
	 if @kiosk
	 	text = text.gsub(/<div[^<]*?id="video-urs"[^<]*?>.*?<\/div>/m,
	 		'<video controls="controls" preload="auto">
  				<source src="/assets/urs.mp4" />
			</video>')
	 end

    text.html_safe
  end

end
