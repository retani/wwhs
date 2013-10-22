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

    text.html_safe
  end

end
