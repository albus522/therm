class ThermControl
  SWING = 0.5
  CONTROL_PIN = 17

  def self.run
    pin = GPIO::Pin.new(pin: CONTROL_PIN, direction: :out)
    loop do
      begin
        set_temp = SetTemp.first
        temp = Temp.discover.values.first.f
        r = Reading.new(temp_f: temp)
        r.set_temp = set_temp.temp

        if set_temp.cooling?
          if temp < (set_temp.temp - SWING)
            r.state = "off"
            pin.off
          elsif temp > (set_temp.temp + SWING)
            r.state = "cooling"
            pin.on
          end
        else
          if temp > (set_temp.temp + SWING)
            r.state = "off"
            pin.off
          elsif temp < (set_temp.temp - SWING)
            r.state = "heating"
            pin.on
          end
        end

        r.save

        sleep 5
      rescue => e
        puts e.inspect
        sleep 5
      end
    end
  end
end
