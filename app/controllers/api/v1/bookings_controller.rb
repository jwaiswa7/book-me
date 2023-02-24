# frozen_string_literal: true

module Api
  module V1
    class BookingsController < ActionController::API
      before_action :set_company
      def create
        @booking = Booking.new(booking_params.merge(service: @company&.service))
        if @booking.save
          render json: @booking, status: :ok
        else
          render json: {}, status: :unprocessable_entity
        end
      end

      private

      def booking_params
        params.require(:booking).permit(:adult_no, :user_name, :email, :phone_number, :start_on, :end_on, :details,
                                        :child_no)
      end

      def set_company
        @company = Company.find_by(access_key: params[:access_key])
      end
    end
  end
end
