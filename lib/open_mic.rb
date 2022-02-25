
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

  def repeated_jokes?
    # create array of all jokes
    joke_list = []
    @performers.each do |performer|
      joke_list += performer.jokes
    end

    # create an array of unique jokes
    unique_jokes = []
    @performers.each do |performer|
      unique_jokes = union(unique_jokes, perfomer.jokes)
    end

    # compare lengths of two joke lists to see if duplicates
    if joke_list.length > unique_jokes.length
      return true
    else
      return false
    end
  end
end
