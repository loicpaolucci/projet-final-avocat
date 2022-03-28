class AppointmentsController < ApplicationController
    before_action :authenticate
    def index
        @appointments = Appointment.all
        respond_to do |format|
            format.js { }
        end
    end

    def create
        @appointment = Appointment.new(post_params)
        if @appointment.save
        end
    end
    
    def destroy
        Appointment.find(params[:id]).destroy
        redirect_to profil_index_path(1)
    end

    private

    def post_params
        params[:firm_id] = current_user.firm_id
        params[:is_confirmed] = false
        params[:is_paid] = false
        params[:start_date] = (params[:date] + " " + params[:time]).to_datetime
        params.permit(:start_date, :is_confirmed, :is_paid, :firm_id)
    end
end