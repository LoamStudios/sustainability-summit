module Paperclip
    class Sponsors < Thumbnail

        def transformation_command
            trans = []
            trans << "-strip"
            trans << "-thumbnail" << %["#{@target_geometry.to_s}"]
            trans << "-gravity" << "Center"
            trans << "-extent" << %["#{@target_geometry.to_s}"]
            trans
        end
    end
end
