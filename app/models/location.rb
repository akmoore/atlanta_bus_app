class Location < ApplicationRecord
    geocoded_by :full_street_address   # can also be an IP address
    after_validation :geocode

    def full_street_address
        "#{street_address}, #{city}, GA"
    end

end
