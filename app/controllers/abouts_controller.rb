class AboutsController < ApplicationController
  before_filter :authenticate_user!, :only => :edit
  def index
    @abouts = About.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @abouts }
    end
  end

  def new
    @about = About.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @about}
    end
  end
  def show
    @about = About.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @about }
    end
  end

  def edit
    @about = About.find(params[:id])
  end

  def create
    @about = About.new(params[:about])
    respond_to do |format|
      if @about.save
        format.html { redirect_to :controller => 'abouts', :action  => 'index'}
        format.json { render json: @about, status: :created, location: @about }
      else
        format.html { render action: "new" }
        format.json { render json: @about.errors, status: :unprocessable_entity }

      end
    end
  end

  def update
    @about = About.find(params[:id])

    respond_to do |format|
      if @about.update_attributes(params[:about])
        format.html { redirect_to @about, notice: 'How to was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "How to" }
        format.json { render json: @about.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @about = About.find(params[:id])
    @about.destroy

    respond_to do |format|
      format.html { redirect_to abouts_url }
      format.json { head :ok }
    end
  end

end
