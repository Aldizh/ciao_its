class HowtosController < ApplicationController
  before_filter :authenticate_user!, :only => :edit
  def index
    @howtos = Howto.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @howtos }
    end
  end

  def new
    @howto = Howto.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @howto}
    end
  end
  def show
    @howto = Howto.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @howto }
    end
  end

  def edit
    @howto = Howto.find(params[:id])
  end

  def create
    @howto = Howto.new(params[:howto])
    respond_to do |format|
      if @howto.save
        format.html { redirect_to @howto, notice: 'Comment was successfully created.' }
        format.json { render json: @howto, status: :created, location: @howto }
      else
        format.html { render action: "new" }
        format.json { render json: @howto.errors, status: :unprocessable_entity }

      end
    end
  end

  def update
    @howto = Howto.find(params[:id])

    respond_to do |format|
      if @howto.update_attributes(params[:howto])
        format.html { redirect_to @howto, notice: 'How to was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "How to" }
        format.json { render json: @howto.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @howto = Howto.find(params[:id])
    @howto.destroy

    respond_to do |format|
      format.html { redirect_to howtos_url }
      format.json { head :ok }
    end
  end
end
