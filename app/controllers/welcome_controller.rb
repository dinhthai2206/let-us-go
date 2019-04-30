class WelcomeController < ApplicationController
  extend WelcomeHelper
  
  def index
    if params[:tag]
      @events = Event.by_hidden_status().tagged_with(params[:tag]).page params[:page]
    else
      @events = Event.by_hidden_status().page params[:page]
    end

    if params[:search]
      @events = Event.by_hidden_status().search(params[:search]).page params[:page]
      @events_found = @events.count
      @places = Place.search(params[:search])
      @places_found = @places.count
    else
      @events = Event.by_hidden_status().page params[:page]
    end
  end

  def place_index
    @places = Place.all.page params[:page]
  end

  def terms
  end
end
