# frozen_string_literal: true

class ReservationTimesController < ApplicationController
  before_action :set_current_user
  def create
    @reservation_time = ReservationTime.new(
      user_id: session[:user_id],
      reservation_date: params[:reservation_date],
      start_time: params[:start_time],
      end_time: params[:end_time]
      )
      if @reservation_time.save
        flash[:notice] = "予約が完了しました"
        redirect_to home_index_path
      end
  end
end
