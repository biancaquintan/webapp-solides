class HomeController < ApplicationController
  def index
    @check_records = verify_record
    @current_record = @check_records.first if @check_records
  end

  private

  def verify_record
    Record.where(user_id: current_user.id, reference_day: Date.today )
  end
end
