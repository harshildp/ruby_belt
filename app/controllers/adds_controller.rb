class AddsController < ApplicationController
  def create
    Add.create(song_id:params[:id], user_id:session[:user_id]) if Song.find(params[:id])
    redirect_to songs_path
  end
end
