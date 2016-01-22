class TeamsController < ApplicationController
    def show
        events_with_teams
        @event = event(params[:id])
        @subnav_items = menu_presenters
        @team_list = @event.teams.to_a.keep_if { |team| team.people.any?}
    end

    def menu_presenters
        @events.map do |e|
            Subnav.new(team_year_path(id: e.name), e.name, @event == e)
        end
    end

    def events_with_teams
        @events = Event.with_teams
    end
end
