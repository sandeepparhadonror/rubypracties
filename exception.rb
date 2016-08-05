def randnum
  case rand(1..10)
    when 1..5 then raise "This is tun time exception"
    when 7..12 then raise ArgumentError "This is argument Error"
  end    
end

def call_randnum
  begin
    randnum
  rescue RunTimeError
    p "We rescude the runtime error"
  rescue ArgumentError
    p "ArgumentError is raise"
  end
end
