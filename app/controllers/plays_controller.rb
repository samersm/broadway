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
  
  # From scaffold generator

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
  
  # PATCH/PUT /plays/1
  # PATCH/PUT /plays/1.json
  def update
    # respond_to do |format|
      if @play.update(play_params)
        redirect_to play_path(@play)
        # format.html { redirect_to @play, notice: 'Play was successfully updated.' }
        # format.json { render :show, status: :ok, location: @play }
      else
        render 'edit'
        # format.html { render :edit }
        # format.json { render json: @play.errors, status: :unprocessable_entity }
      end
    # end
  end

  # DELETE /plays/1
  # DELETE /plays/1.json
  def destroy
    @play.destroy
    redirect_to root_path
    # respond_to do |format|
    #   format.html { redirect_to plays_url, notice: 'Play was successfully destroyed.' }
    #   format.json { head :no_content }
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

=begin
class PlaysController < ApplicationController
  before_action :set_play, only: [:show, :edit, :update, :destroy]

  # GET /plays
  # GET /plays.json
  def index
    @plays = Play.all
  end

  # GET /plays/1
  # GET /plays/1.json
  def show
  end

  # GET /plays/new
  def new
    @play = Play.new
  end

  # GET /plays/1/edit
  def edit
  end

  # POST /plays
  # POST /plays.json
  def create
    @play = Play.new(play_params)

    respond_to do |format|
      if @play.save
        format.html { redirect_to @play, notice: 'Play was successfully created.' }
        format.json { render :show, status: :created, location: @play }
      else
        format.html { render :new }
        format.json { render json: @play.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plays/1
  # PATCH/PUT /plays/1.json
  def update
    respond_to do |format|
      if @play.update(play_params)
        format.html { redirect_to @play, notice: 'Play was successfully updated.' }
        format.json { render :show, status: :ok, location: @play }
      else
        format.html { render :edit }
        format.json { render json: @play.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plays/1
  # DELETE /plays/1.json
  def destroy
    @play.destroy
    respond_to do |format|
      format.html { redirect_to plays_url, notice: 'Play was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_play
      @play = Play.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def play_params
      params.fetch(:play, {})
    end
end

=end