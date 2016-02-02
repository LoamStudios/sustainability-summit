# Should be run using rails r
ActiveRecord::Base.connection.tables.each { |t| ActiveRecord::Base.connection.reset_pk_sequence!(t) }

Dir.chdir("#{Rails.root}/lib/data")

Dir.chdir('photos') do |path|
    Dir.foreach(".") do |album|
        next if album.starts_with?(".")
        
        event = Event.find_by(name: album)
        Dir.chdir(album) do |album_path|
            puts "Importing pictures from #{album_path}"
            Dir.foreach(".") do |file|
                next if file.starts_with?(".")
                puts "Importing #{file}"
                event.photos << Photo.new(event: event, image: File.new(file))
            end
        end
    end
end

Dir.chdir('db-person') do |path| 
    Dir.foreach(".") do |file|
        next if file.starts_with?(".")
        puts "Importing #{file}"
        person = Person.find_by(id: file)
        person.update(avatar: File.new(file))
    end
end

Dir.chdir('db-sponsor') do |path| 
    Dir.foreach(".") do |file|
        next if file.starts_with?(".") || file.ends_with?(".svg")
        puts "Importing #{file}"
        id = file.sub(/\.png/, "")
        puts id
        sponsor = Sponsor.find_by(id: id)
        sponsor.update(logo: File.new(file))
    end
end

