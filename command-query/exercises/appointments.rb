class Appointments

  def initialize
    @time = []
  end

  def at(t)
    @time << t
  end

  def earliest
    @time.sort.first
  end
end
