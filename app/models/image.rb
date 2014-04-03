class Image < ActiveRecord::Base
  attr_accessible :image, :title

  has_attached_file :image, 
  	:styles => { :large => "500x500", :medium => "300x300>", :thumb => "100x100>", :thumbsquared => "100x100#", :mediumsquared => "300x300#", :largesquared => "500x500#" },
    :storage => :s3,
    :bucket         => ENV['S3_WWHS_BUCKET'],
    :s3_credentials => { :access_key_id     => ENV['S3_KEY'], 
                         :secret_access_key => ENV['S3_SECRET'] },
    :url => ':s3_domain_url',
    :path => "images/:id/:style/image.:extension"  	
	
end
