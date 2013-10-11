class UchronistsController < ApplicationController
  # GET /uchronists
  # GET /uchronists.json
  def index
    @uchronists = Uchronist.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @uchronists }
    end
  end

  # GET /uchronists/1
  # GET /uchronists/1.json
  def show
    @uchronist = Uchronist.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @uchronist }
    end
  end

  # GET /uchronists/new
  # GET /uchronists/new.json
  def new
    @uchronist = Uchronist.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @uchronist }
    end
  end

  # GET /uchronists/1/edit
  def edit
    @uchronist = Uchronist.find(params[:id])
  end

  # POST /uchronists
  # POST /uchronists.json
  def create
    @uchronist = Uchronist.new(params[:uchronist])

    respond_to do |format|
      if @uchronist.save
        format.html { redirect_to @uchronist, notice: 'Uchronist was successfully created.' }
        format.json { render json: @uchronist, status: :created, location: @uchronist }
      else
        format.html { render action: "new" }
        format.json { render json: @uchronist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /uchronists/1
  # PUT /uchronists/1.json
  def update
    @uchronist = Uchronist.find(params[:id])

    respond_to do |format|
      if @uchronist.update_attributes(params[:uchronist])
        format.html { redirect_to @uchronist, notice: 'Uchronist was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @uchronist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /uchronists/1
  # DELETE /uchronists/1.json
  def destroy
    @uchronist = Uchronist.find(params[:id])
    @uchronist.destroy

    respond_to do |format|
      format.html { redirect_to uchronists_url }
      format.json { head :no_content }
    end
  end
end
