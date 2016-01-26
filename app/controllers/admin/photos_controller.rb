module Admin
  class PhotosController < Admin::ApplicationController
    # To customize the behavior of this controller,
    # simply overwrite any of the RESTful actions. For example:
    #
    # def index
    #   super
    #   @resources = Photo.all.paginate(10, params[:page])
    # end

    # Define a custom finder by overriding the `find_resource` method:
    # def find_resource(param)
    #   Photo.find_by!(slug: param)
    # end

    # See https://administrate-docs.herokuapp.com/customizing_controller_actions
    # for more information

    def create
      images = params[:photo][:image]

      success = true
      images.each do |img|
        resource = resource_class.new(image: img, event_id: resource_params[:event_id])  
        success &&= resource.save
      end

      if success
        redirect_to(
          admin_photos_path,
          notice: translate_with_resource("create.success"),
        )
      else
        render :new, locals: {
          page: Administrate::Page::Form.new(dashboard, resource),
        }
      end
    end
  end
end
