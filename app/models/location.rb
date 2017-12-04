class Location < ApplicationRecord
    geocoded_by :full_street_address   # can also be an IP address
    after_validation :geocode

    MARTA_CITIES = ['Atlanta',
    'Alpharetta',
    'Avondale Estates',
    'Chamblee',
    'Clarkston',
    'College Park',
    'Decatur',
    'Doraville',
    'Dunwoody',
    'East Point',
    'Ellenwood',
    'Fairburn',
    'Forest Park',
    'Hapeville',
    'Jonesboro',
    'Lake City',
    'Lovejoy',
    'Lithonia',
    'Morrow',
    'Palmetto',
    'Riverdale',
    'Roswell',
    'Sandy Springs',
    'Stone Mountain',
    'Union City']

    def full_street_address
        "#{street_address}, #{city}, GA"
    end

    # def has_been_geocoded?
    #     while self.latitude.nil? || self.longitude.nil?
    #         sleep(1)
    #         :geocode
    #     end
    # end

end
