class GenresController < ApplicationController
  def create
    @genre = Genre.new(post_params)
    @genre.save
    redirect_to @genre
  end


  def update
    @genre = Genre.find(params[:id])
    @genre.update(post_params)
    redirect_to @genre
  end

  def edit
    @genre = Genre.find(params[:id])
    @genre.save
  end


  def new
    @genre = Genre.new
  end


  def show
    @genre = Genre.find(params[:id])
  end


    private

  def post_params
    params.require(:genre).permit(:name)
  end

end
