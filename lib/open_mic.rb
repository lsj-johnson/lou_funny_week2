
class OpenMic
  attr_reader   :event_hash, :performers

  def initialize(event_hash)
    @event_hash         = event_hash
    @performers         = []
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
    joke_ids_all = []
    @performers.each do |performer|
      performer.jokes.each do |joke|
        joke_ids_all.append(joke.id)
      end
    end
    unique_jokes = joke_ids_all.uniq
    repeat = false
    if joke_ids_all.length > unique_jokes.length
      repeat = true
    end
    repeat
  end
end
