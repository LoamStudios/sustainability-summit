module Admin
  class TimeslotsController < Admin::ApplicationController
    # To customize the behavior of this controller,
    # simply overwrite any of the RESTful actions. For example:
    #
    # def index
    #   super
    #   @resources = Timeslot.all.paginate(10, params[:page])
    # end

    # Define a custom finder by overriding the `find_resource` method:
    # def find_resource(param)
    #   Timeslot.find_by!(slug: param)
    # end

    # See https://administrate-docs.herokuapp.com/customizing_controller_actions
    # for more information

    private

    def order
      @_order ||= if params[:order]
        Administrate::Order.new(params[:order], params[:direction])
      else
        Administrate::Order.new('event_id', 'desc')
      end
    end

  end
end
