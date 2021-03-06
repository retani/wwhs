class ToursController < ApplicationController

  before_filter :authenticate
  
  layout :set_layout
  
  def set_layout
  	if action_name == "print"
  		return 'print' 
  	else
		return 'admin'   
	end
  end


  # GET /tours
  # GET /tours.json
  def index
    @tours = Tour.order("number ASC")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tours }
    end
  end

  # GET /tours/1
  # GET /tours/1.json
  def show
    @tour = Tour.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tour }
    end
  end

  # GET /tours/1/setup
  def setup
  
    @tour = Tour.find(params[:id])
    @last_translations = UserBiography.find(params[:bio_id]).translations if params[:bio_id]

	if params[:bio_action] == "add"
		bio = UserBiography.find(params[:bio_id])
		bio.tour = @tour
		bio.save
	end

	if params[:bio_action] == "remove"
		bio = UserBiography.find(params[:bio_id])
		bio.tour = nil
		bio.save
	end

    @tour_bios = @tour.user_biographies.order("updated_at DESC")
    @named_bios = UserBiography.where("name != ?", '').order("created_at DESC")
    @user_biography = UserBiography.new

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tour }
    end
  end
  
  # GET /tours/1/print
  def print
  	
    @tour = Tour.find(params[:id])
    @tour_bios = @tour.user_biographies.order("updated_at DESC")
    @blocks = (@tour.user_biographies.count % 10).ceil
    	
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tour }
    end
  end  

  # GET /tours/new
  # GET /tours/new.json
  def new
    @tour = Tour.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tour }
    end
  end

  # GET /tours/1/edit
  def edit
    @tour = Tour.find(params[:id])
  end

  # POST /tours
  # POST /tours.json
  def create
    @tour = Tour.new(params[:tour])

    respond_to do |format|
      if @tour.save
        format.html { redirect_to @tour, notice: 'Tour was successfully created.' }
        format.json { render json: @tour, status: :created, location: @tour }
      else
        format.html { render action: "new" }
        format.json { render json: @tour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tours/1
  # PUT /tours/1.json
  def update
    @tour = Tour.find(params[:id])

    respond_to do |format|
      if @tour.update_attributes(params[:tour])
        format.html { redirect_to @tour, notice: 'Tour was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tours/1
  # DELETE /tours/1.json
  def destroy
    @tour = Tour.find(params[:id])
    @tour.destroy

    respond_to do |format|
      format.html { redirect_to tours_url }
      format.json { head :no_content }
    end
  end
end
