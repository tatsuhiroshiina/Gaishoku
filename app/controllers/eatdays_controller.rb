class EatdaysController < ApplicationController
  def index
    @eatday = Eatday.new
    @eatday_today = Eatday.find_by(created_at: Time.zone.now.beginning_of_day..Time.zone.now.end_of_day, user_id: current_user.id)
    @month_count = Eatday.where(created_at: Time.current.all_month).where(user_id: current_user.id).sum(:eat_count)
    @year_count = Eatday.where(created_at: Time.current.all_year).where(user_id: current_user.id).sum(:eat_count)
    @week_count = Eatday.where(created_at: Time.current.all_week).where(user_id: current_user.id).sum(:eat_count)
    @eatdays = Eatday.where(user_id: current_user.id)
  end

  def show
    @eatday = Eatday.find_by(id:params[:id])
  end

  def create
    @eatday = Eatday.new(eatday_params)
    @eatday.user_id = current_user.id
    @eatday.start_time = Time.now
    @eatday.save
    redirect_to eatdays_path
  end

  def update
    @eatday = Eatday.find_by(id: params[:id])
    @eatday.update(eatday_params)
    @eatday.user_id = current_user.id
    redirect_to eatdays_path
  end

  def update_certain_date

  end
  def destroy
    @eatday = Eatday.find(params[:id])
    @eatday.destroy
    redirect_to eatdays_path, notice:"削除しました"
  end

  def edit
    @eatday = Eatday.find(params[:id])
  end

  private
    def eatday_params
      params.require(:eatday).permit(:eat_count, :start_time, :menu1, :menu2, :menu3, :menu4, :people1, :people2, :people3, :people4, :user_id)
    end
end
