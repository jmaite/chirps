class ChirpsController < ApplicationController
  def index
    @chirps = Chirp.all
  end

  def show
    @chirp = Chirp.find(params[:id])
  end

  def new
    @chirp = Chirp.new
  end

  def create
    @chirp = Chirp.new(chirp_params)

    if @chirp.save
      redirect_to @chirp
    else
      render 'new'
    end
  end

  def edit
    @chirp = Chirp.find(params[:id])
  end

  def update
    @chirp = Chirp.find(params[:id])

    if @chirp.update(chirp_params)
      redirect_to @chirp
    else
      render 'edit'
    end
  end

  def destroy
    @chirp = Chirp.find(params[:id])
    @chirp.destroy

    redirect_to chirps_path
  end

  private
  def chirp_params
    params.require(:chirp).permit(:text)
  end
end
