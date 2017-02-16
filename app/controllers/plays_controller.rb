class PlaysController < ApplicationController
    
    def index
        
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
    #   if @directory.save
    #     format.html { redirect_to @directory, notice: 'Directory was successfully created.' }
    #     format.json { render :show, status: :created, location: @directory }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @directory.errors, status: :unprocessable_entity }
    #   end
    # end
  end    
  
    private
    def play_params
        params.require(:play).permit(:title, :description, :director)
    end
  
end
