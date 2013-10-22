class UchroniasController < ApplicationController

  before_filter :authenticate, except: [:show]
  layout 'admin' 

  # GET /uchronias
  # GET /uchronias.json
  def index
    @uchronias = Uchronia.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @uchronias }
    end
  end

  # GET /uchronias/1
  # GET /uchronias/1.json
  def show
    @uchronia = Uchronia.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @uchronia }
    end
  end

  # GET /uchronias/new
  # GET /uchronias/new.json
  def new
    @uchronia = Uchronia.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @uchronia }
    end
  end

  # GET /uchronias/1/edit
  def edit
    @uchronia = Uchronia.find(params[:id])
  end

  # POST /uchronias
  # POST /uchronias.json
  def create
    @uchronia = Uchronia.new(params[:uchronia])

    respond_to do |format|
      if @uchronia.save
        format.html { redirect_to @uchronia, notice: 'Uchronia was successfully created.' }
        format.json { render json: @uchronia, status: :created, location: @uchronia }
      else
        format.html { render action: "new" }
        format.json { render json: @uchronia.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /uchronias/1
  # PUT /uchronias/1.json
  def update
    @uchronia = Uchronia.find(params[:id])

    respond_to do |format|
      if @uchronia.update_attributes(params[:uchronia])
        format.html { redirect_to @uchronia, notice: 'Uchronia was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @uchronia.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /uchronias/1
  # DELETE /uchronias/1.json
  def destroy
    @uchronia = Uchronia.find(params[:id])
    @uchronia.destroy

    respond_to do |format|
      format.html { redirect_to uchronias_url }
      format.json { head :no_content }
    end
  end
end
