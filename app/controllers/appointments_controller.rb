class AppointmentsController < ApplicationController
    def index
        @appointments = Appointment.all
        respond_to do |format|
            format.js { }
        end
    end
end
