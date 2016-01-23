class PhotosController < ApplicationController
    def index
        events_with_photos
        @event = event(params[:id])
        @subnav_items = menu_presenters
        @photos = @event.photos
    end

    def menu_presenters
        @events.map do |e|
            Subnav.new(photos_year_path(id: e.name), e.name, @event == e)
        end
    end

    def events_with_photos
        @events = Event.with_photos
    end
end
