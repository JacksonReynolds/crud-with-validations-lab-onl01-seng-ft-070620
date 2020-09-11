class TitleValidator < ActiveModel::Validator
    def validate(record)
        record.class.all.each do |song|
            if (song.artist_name == record.artist_name &&
                song.release_year == record.release_year &&
                song != record)
                
                unless song.title != record.title
                    record.errors[:title] << "A song already exists for that title, artist name and release year"
                end
            end
        end
    end
end