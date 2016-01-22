class SponsorsController < ApplicationController
    def index
        events_with_sponsorships
        @event = event(params[:id])
        @subnav_items = menu_presenters
        @sponsorship_list = @event.sponsorships.to_a.keep_if { |sponsorship| sponsorship.sponsors.any?}      
    end

    def menu_presenters
        @events.map do |e|
            Subnav.new(sponsor_year_path(id: e.name), e.name, @event == e)
        end
    end

    def events_with_sponsorships
        @events = Event.with_sponsorships
    end
end
