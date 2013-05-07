class CommentsController < ApplicationController
  before_filter :authenticate_user!#, :only => :delete

  # GET /tickets
  # GET /tickets.json
  def index
    @comments = Comment.includes(:ticket, :user)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @comments }
    end
  end
  def ticket_comments
    @ticket_comments = Comment.find_all_by_ticket_id(session[:ticket_id])
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ticket_comments }
    end
  end

  # GET /tickets/1
  # GET /tickets/1.json
  def show
    @comment = Comment.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @comment }
    end
  end

  # GET /tickets/new
  # GET /tickets/new.json
  def new
    @comment = Comment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @comment}
    end
  end

  # GET /tickets/1/edit
  def edit
    @comment = Comment.find(params[:id])
  end

  # POST /tickets
  # POST /tickets.json
  def create
    @comment = Comment.new(params[:comment])
    puts "THIS IS COMMENT TO SEE CREATE"
    puts @comment
    respond_to do |format|
      if @comment.save
        format.html { redirect_to @comment, notice: 'Comment was successfully created.' }
        format.json { render json: @comment, status: :created, location: @comment }
      else
        format.html { render action: "new" }
        format.json { render json: @comment.errors, status: :unprocessable_entity }

      end
    end
  end
  # PUT /tickets/1
  # PUT /tickets/1.json
  def update
    @comment = Comment.find(params[:id])

    respond_to do |format|
      if @comment.update_attributes(params[:comments])
        format.html { redirect_to @comment, notice: 'Ticket was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tickets/1
  # DELETE /tickets/1.json
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to comments_url }
      format.json { head :ok }
    end
  end
end
