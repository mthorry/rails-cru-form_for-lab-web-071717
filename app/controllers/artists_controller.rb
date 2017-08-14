class ArtistsController < ApplicationController
  def create
    @artist = Artist.new(post_params)
    @artist.save
    redirect_to @artist
  end


  def update
    @artist = Artist.find(params[:id])
    @artist.update(post_params)
    redirect_to @artist
  end

  def edit
    @artist = Artist.find(params[:id])
    @artist.save
  end


  def new
    @artist = Artist.new
  end


  def show
    # byebug
    @artist = Artist.find(params[:id])
  end


    private

  def post_params
    params.require(:artist).permit(:name, :bio)
  end

end
