class FavoritesController < ApplicationController
  def index
    @favorites = Favorite.all
  end

  def show
    @favorite = Favorite.find(params[:id])
  end

  def new
    @favorite = Favorite.new dish_id: params[:dish_id]
  end

  def create
    @favorite = Favorite.new
    @favorite.user_id = params[:user_id]
    @favorite.dish_id = params[:dish_id]
    @favorite.venue_id = params[:venue_id]
    @favorite.notes = params[:notes]
    @favorite.photo = params[:photo]

    if @favorite.save
      redirect_to "/", :notice => "Favorite created successfully."
    else
      render 'new'
    end
  end

  def edit
    @favorite = Favorite.find(params[:id])
  end

  def update
    @favorite = Favorite.find(params[:id])

    @favorite.user_id = params[:user_id]
    @favorite.dish_id = params[:dish_id]
    @favorite.venue_id = params[:venue_id]
    @favorite.notes = params[:notes]
    @favorite.photo = params[:photo]

    if @favorite.save
      redirect_to "/", :notice => "Favorite updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @favorite = Favorite.find(params[:id])

    @favorite.destroy

    redirect_to "/favorites", :notice => "Favorite deleted."
  end
end
