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
    @play = current_user.play.build
  end

  # GET /directories/1/edit
  def edit
  end
  
  # POST /directories
  # POST /directories.json
  def create
    @play = current_user.play.build(play_params)
      if @play.save
          redirect_to root_path
      else
          render 'new'
      end
  end  
  
  # PATCH/PUT /plays/1
  # PATCH/PUT /plays/1.json
  def update
      if @play.update(play_params)
        redirect_to play_path(@play)
      else
        render 'edit'
      end
  end

  # DELETE /plays/1
  # DELETE /plays/1.json
  def destroy
    @play.destroy
    redirect_to root_path
  end

  
    private
    def play_params
        params.require(:play).permit(:title, :description, :director)
    end
    
    def find_play
        @play = Play.find(params[:id])
    end
  
end
