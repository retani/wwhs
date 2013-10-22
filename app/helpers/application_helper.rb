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
	  Uchronia.all.each do |u|
  	 link_list += link_to u.title, '#/' + u.slug
  	 link_list += ", "
    end  
		
    text = text.gsub(/<uchronia_links>/) {
			link_list    
		}

    text.html_safe
  end

end
