class UserBiographiesController < ApplicationController
  # GET /user_biographies
  # GET /user_biographies.json
  layout 'admin'

  def index
    @user_biographies = UserBiography.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_biographies }
    end
  end
  
  def sync
  	#UserBiography.where("id_live >= 0").destroy_all
  	return false if !Rails.env.development?
    ActiveRecord::Base.establish_connection :productionremote
    	@live_bios = UserBiography.find(:all, :conditions => "on_tour = true")
    ActiveRecord::Base.establish_connection :development
	@sync_counter = 0
	@live_bios.each do |live_bio| 
		live_bio['id_live'] = live_bio['id']
		#logger.info UserBiography.all.select {|bio| bio.attributes.except("id_live", "on_tour", "tour_id","id").should == live_bio.attributes.except("id_live", "on_tour", "tour_id","id") }.count
		if UserBiography.where(id_live: live_bio.id_live).count == 0
			logger.info "copying user_biography '" +  live_bio['name'] + "' from live to local db"
			logger.info live_bio.attributes.except('id')
			UserBiography.create live_bio.attributes.except('id')
			@sync_counter = @sync_counter + 1
		end
	end
  end

  def all
    @user_biographies = UserBiography.all
    @uchronias = Uchronia.all
    
    require 'digest/md5'
    
    @hashes = []

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_biography }
    end
  end

  # GET /user_biographies/1
  # GET /user_biographies/1.json
  def show
    @user_biography = UserBiography.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_biography }
    end
  end

  # GET /user_biographies/new
  # GET /user_biographies/new.json
  def new
    @user_biography = UserBiography.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_biography }
    end
  end

  # GET /user_biographies/1/edit
  def edit
    @user_biography = UserBiography.find(params[:id])
  end

  # POST /user_biographies
  # POST /user_biographies.json
  def create
    @user_biography = UserBiography.new(params[:user_biography])

    respond_to do |format|
      unless params[:nosave]
      	if @user_biography.save
      		if @user_biography.tour 
		        format.html { redirect_to controller: 'tours', action: 'setup', id: @user_biography.tour.id, bio_id: @user_biography.id, notice: 'User biography was successfully created.' }
  		      format.json { render json: {:original => @user_biography, :translations => @user_biography.translations }, status: :created, location: @user_biography }
  		    else 
  		      format.html { redirect_to @user_biography, notice: 'User biography was successfully created.' }
  		      format.json { render json: {:original => @user_biography, :translations => @user_biography.translations }, status: :created, location: @user_biography }
  				end    
  	    else 	
	        format.html { render action: "new" }
  	      format.json { render json: @user_biography.errors, status: :unprocessable_entity }
  	    end
  	  else
	  	  format.html { render json: {:original => @user_biography, :translations => @user_biography.translations }, status: :created, location: @user_biography }
	  	  format.json { render json: {:original => @user_biography, :translations => @user_biography.translations }, status: :created, location: @user_biography }
      end
    end
  end

  # PUT /user_biographies/1
  # PUT /user_biographies/1.json
  def update
    @user_biography = UserBiography.find(params[:id])

    respond_to do |format|
      if @user_biography.update_attributes(params[:user_biography])
        format.html { redirect_to @user_biography, notice: 'User biography was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_biography.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_biographies/1
  # DELETE /user_biographies/1.json
  def destroy
    @user_biography = UserBiography.find(params[:id])
    @user_biography.destroy

    respond_to do |format|
      format.html { redirect_to user_biographies_url }
      format.json { head :no_content }
    end
  end
end
