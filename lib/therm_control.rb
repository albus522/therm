class ThermControl
  SWING = 0.5
  CONTROL_PIN = 17

  def self.run
    pin = GPIO::Pin.new(pin: CONTROL_PIN, direction: :out)
    loop do
      begin
        set_temp = SetTemp.first
        temp = Temp.discover.values.first.f

        if set_temp.cooling?
          if temp < (set_temp.temp - SWING)
            pin.off
          elsif temp > (set_temp.temp + SWING)
            pin.on
          end
        else
          if temp > (set_temp.temp + SWING)
            pin.off
          elsif temp < (set_temp.temp - SWING)
            pin.on
          end
        end

        sleep 5
      rescue => e
        puts e.inspect
        sleep 5
      end
    end
  end
end
