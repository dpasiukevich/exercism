class SpaceAge
  @@ORBITAL_PERIOD = {
    mercury: 0.2408467,
    venus: 0.61519726,
    earth: 1,
    mars: 1.8808158,
    jupiter: 11.862615,
    saturn: 29.447498,
    uranus: 84.016846,
    neptune: 164.79132
  }

  @@EARTH_SECONDS_IN_YEAR = 31557600

  attr_reader :seconds

  def initialize(seconds)
    @seconds = seconds
  end

  def method_missing(name,*args,&block)
    planet = name[/on_(\w+)/,1]

    if planet
      planet = planet.downcase.to_sym

      if @@ORBITAL_PERIOD.include? planet
        1.0 * @seconds / @@EARTH_SECONDS_IN_YEAR / @@ORBITAL_PERIOD[planet]
      else
        raise NoMethodError
      end
    else
      raise NoMethodError
    end
  end
end
