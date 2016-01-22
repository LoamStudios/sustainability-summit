class ProgramsController < ApplicationController
    def show
        events_with_programs
        @event = event(params[:id])
        @subnav_items = menu_presenters
        @timeslot_list = @event.timeslots.to_a.keep_if { |slot| slot.sessions.any?}
    end

    def menu_presenters
        @events.map do |e|
            Subnav.new(program_year_path(id: e.name), e.name, @event == e)
        end
    end

    def events_with_programs
        @events = Event.with_programs
    end
end
