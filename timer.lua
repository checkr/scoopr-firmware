tmr.create():alarm(1000, tmr.ALARM_AUTO, function()
  new_weight = hx711.read(0)
  print(raw_data)
  http.post(
  "http://scoopr.example.com/coffee_weights", "", "coffee_weight%5Bdevice_id%5D=1&coffee_weight%5Bweight%5D=" .. new_weight,function(code, data)
      if (code < 0) then
        print("HTTP request failed")
      else
        print(code, data)
      end
    end)
  end)
