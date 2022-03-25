class ProfilController < ApplicationController
        def create 
        end

        def new 
        end

        def edit 
        end

        def show
                @apt = Appointment.find_by(client_id: current_user.id)
        end

        def update
        end

        def destroy 
        end

end