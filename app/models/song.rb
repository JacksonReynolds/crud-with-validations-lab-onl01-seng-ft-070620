class Song < ApplicationRecord
    include ActiveModel::Validations
    validates :title, presence: true
    validates_with TitleValidator
    validates :released, inclusion: [true, false]
    validates :release_year, presence: true, if: :released?
    validates :release_year, numericality: {less_than_or_equal_to: Time.now.year}, if: :released?
    def released?
        self.released
    end
end
