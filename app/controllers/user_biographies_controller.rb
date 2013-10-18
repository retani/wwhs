class UserBiographiesController < ApplicationController
  # GET /user_biographies
  # GET /user_biographies.json
  def index
    @user_biographies = UserBiography.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_biographies }
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
      if @user_biography.save
        format.html { redirect_to @user_biography, notice: 'User biography was successfully created.' }
        format.json { render json: @user_biography, status: :created, location: @user_biography }
      else
        format.html { render action: "new" }
        format.json { render json: @user_biography.errors, status: :unprocessable_entity }
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
