class AgeController < ApplicationController
  def display_age
    date = params[:date][":dob"]
    now = Time.now.utc.to_date
    dob = Date.parse(date)
    @age = (now.year - dob.year).to_i
    if now.year == dob.year
      if @age < 1 && now.month != dob.month
        @age = (now.month - dob.month).to_i
      else
        if now.day > dob.day
          @age = (now.day - dob.day).to_i
        else
          redirect_to date_display_path, notice: "Invalid age"
        end
      end
      put "#{@age} years old"
    end
    render "display"
  end
end
