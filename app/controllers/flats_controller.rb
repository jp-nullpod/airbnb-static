require 'open-uri'

class FlatsController < ApplicationController
    FLATS_URL = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json".freeze
    before_action :set_flats

    # display all flats
    def home      
    end

    def show      
        appartment_id = params[:id]
        @flat = @flats.find { |flat| flat['id'] == appartment_id.to_i }
    end

    private
    
    def set_flats
        @flats = JSON.parse(open(FLATS_URL).read)
    end
end
