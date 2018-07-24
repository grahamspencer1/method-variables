class Vampire

  def initialize

  end

  def create

  end

  def drink_blood
    drank_blood_today? = true
  end

  def sunrise
    #if time >= 6am && time <= 6pm
      #kill vampire
    #else
      #vampire lives
    # end
  end

  def sunset
    @drank_blood_today? = false
    @in_coffin? = false
  end

  def go_home
    @in_coffin? = true
  end

  def in_coffin?
  end

  def drank_blood_today?
  end

end


dracula = Vampire.new("Dracula")
