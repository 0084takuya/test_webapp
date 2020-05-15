class HomeController < ApplicationController
  def index
    @negative=0
    @positive=0
    PcrInspection.all.each do |pcr|
       if pcr.result == 1 then
        @negative += 1
       else 
        @positive += 1
       end
       end
    @pcr_n = PcrInspection.where(result: 1).order('date(testDay)')
  end

  def age(birthday)
    age = (Date.today.strftime('%Y%m%d').to_i - birthday.strftime('%Y%m%d').to_i) / 10000
    if age < 10 then
      return "10歳未満"
    elsif  age < 20 then
      return "10代"
    elsif  age< 30 then
      return "20代"
    elsif  age < 40 then
      return "30代"
    elsif  age < 50 then
      return "40代"
    elsif  age < 60 then
      return "50代"
    elsif  age < 70 then
      return "60代"
    elsif  age< 80 then
      return "70代"
    elsif  age < 90 then
      return "80代"
    elsif  age < 100 then
      return "90代"
    else 
      return "100歳以上"
    end
  end

   helper_method :age

end
