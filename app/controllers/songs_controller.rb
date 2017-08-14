class SongsController < ApplicationController
  def index
    @songs = Song.all
  end
  def create
    @song = Song.new(post_params)
    @song.save
    redirect_to @song
  end


  def update
    @song = Song.find(params[:id])
    @song.update(post_params)
    redirect_to @song
  end

  def edit
    @song = Song.find(params[:id])
    @song.save
  end


  def new
    @song = Song.new
  end


  def show

    @song = Song.find(params[:id])
    @genre = @song.genre
    @artist = @song.artist
  end


    private

  def post_params
    params.require(:song).permit(:name, :genre_id, :artist_id)
  end
end
