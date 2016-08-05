class CarModel

  p ######## Simple to set setter abd getter method ###############

  def engine_info=(info) ; @engine_info  = info ; end
  def engine_info ; @engine_info ; end

  def engine_price=(price) ; @engine_price  = price ; end
  def engine_price ; @engine_price ; end

  def while_info=(info) ; @while_info  = info ; end
  def while_info ; @while_info ; end

  def while_price=(price) ; @while_price  = price ; end
  def while_price ; @while_price ; end

  def airbag_info=(info) ; @airbag_info  = info ; end
  def airbag_info ; @airbag_info ; end

  def airbag_price=(price) ; @airbag_price  = price ; end
  def airbag_price ; @airbag_price ; end

  def alarm_info=(info) ; @alarm_info  = info ; end
  def alarm_info ; @alarm_info ; end

  def alarm_price=(price) ; @alarm_price  = price ; end
  def alarm_price ; @alarm_price ; end

  p ######## Simple to set setter abd getter method ###############

  FEATURES = ["engine", "wheel", "airbag", "alarm", "stereo"]

  FEATURES.each do |feature|
    defind_method("#{feature}_info=") do |info|
      instance_variable_set("#@{feature}_info", info)
    end

    defind_method("#{feature}_info") do
      instance_variable_get("@#{feature}_info")
    end

    defind_method("#{feature}_price=") do |price|
      instance_variable_set("@#{feature}_price", price)
    end

    defind_method("#{feature}_price") do
      instance_variable_get("@#{feature}_price")
    end

  end



end
