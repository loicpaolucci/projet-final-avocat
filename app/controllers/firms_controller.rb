class FirmsController < ApplicationController
    def index
        @zip_id = Departement.find_by(zip_code: params[:zip_code]).id
        respond_to do |format|
            format.js { }
        end
    end
end
