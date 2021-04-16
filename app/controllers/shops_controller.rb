class ShopsController < ApplicationController
  def index
    days = %w(Sunday Monday Tuesday Wednesday Thursday Friday Saturday)
    day_offset = days.index(Time.zone.now.strftime("%A"))
    @shops = Shop.includes(:opening_hours).order(Arel.sql("(opening_hours.day_of_week - #{day_offset} + 7) % 7"))
  end

  def create
    @shop = Shop.new(shop_params)
    if @shop.save
      params[:days].each_with_index do |d, i|
        @shop.opening_hours.create!(
          :day_of_week => d,
          :start_at => params[:start_at][i] + params[:fromM][i],
          :end_at => params[:end_at][i] + params[:toM][i],
          :second_start_at => params[:second_start_at][i] + params[:second_fromM][i],
          :second_end_at => params[:second_end_at][i] + params[:second_toM][i]
        )
      end
    end
  end

  def new
  end

  def shop_params
    params.permit(:name, :days, :start_at, :fromM, :end_at, :toM, 
      :second_start_at, :second_fromM, :second_end_at, :second_toM)
  end
end
