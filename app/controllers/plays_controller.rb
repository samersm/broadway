class PlaysController < ApplicationController
     before_action :find_play, only: [:show, :edit, :update, :destroy]
    
    def index
    @plays = Play.all.order('created_at DESC')
    end
    
  # GET /directories/1
  # GET /directories/1.json
  def show
    
  end

  # GET /directories/new
  def new
    @play = Play.new
  end

  # GET /directories/1/edit
  def edit
  end

  # POST /directories
  # POST /directories.json
  def create
    @play = Play.new(play_params)
    
    # respond_to do |format|
      if @play.save
          redirect_to root_path
        # format.html { redirect_to @play, notice: 'Play was successfully created.' }
        # format.json { render :show, status: :created, location: @play }
      else
          render 'new'
        # format.html { render :new }
        # format.json { render json: @play.errors, status: :unprocessable_entity }
      end
    # end
  end    
  
    private
    def play_params
        params.require(:play).permit(:title, :description, :director)
    end
    
    def find_play
        @play = Play.find(params[:id])
    end
  
end
