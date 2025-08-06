def convert_temp(temperature, input_scale:, output_scale: "celsius")
  celsius_to_fahrenheit = 33.8
    celsius_to_kelvin = 274.15

  if input_scale == output_scale
    temperature
  else
    if input_scale == "fahrenheit"
      if output_scale == "celsius"
        return temperature / celsius_to_fahrenheit
      end
      if output_scale == "kelvin"
        return temperature / celsius_to_fahrenheit * celsius_to_kelvin
      end
    end

    if input_scale == "kelvin"
      if output_scale == "celsius"
        return temperature / celsius_to_kelvin
      end
      if output_scale == "fahrenheit"
        return temperature / celsius_to_kelvin * celsius_to_fahrenheit
      end
    end

    if input_scale == "celsius"
      if output_scale == "fahrenheit"
        return temperature * celsius_to_fahrenheit
      end
      if output_scale == "kelvin"
        temperature * celsius_to_kelvin
      end
    end
  end
end

puts convert_temp(10, input_scale: "celsius", output_scale: "fahrenheit")
