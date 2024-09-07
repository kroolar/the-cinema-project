class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def create
    movie = Movie.new(title: params[:movie][:title])
    movie.save!

    redirect_to movies_path, notice: 'New movie created!'
  rescue => e
    redirect_to movies_path, alert: movie.errors.full_messages.join(', ')
  end

  def destroy
    Movie.destroy_by(id: params[:id])
    @movies = Movie.all

    redirect_to movies_path, notice: 'Movie has been destroyed!'
  end
end
