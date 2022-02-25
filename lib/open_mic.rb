
class OpenMic
  attr_reader   :event_hash, :performers

  def initialize(event_hash)
    @event_hash   = event_hash
    @performers   = []
  end

  def location
    @event_hash[:location]
  end

  def date
    @event_hash[:date]
  end

  def welcome(performer)
    @performers.append(performer)
  end
end
