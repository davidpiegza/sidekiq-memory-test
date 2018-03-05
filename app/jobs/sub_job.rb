class SubJob
  include Sidekiq::Worker

  sidekiq_options queue: 'default'

  def perform(index)
    puts "Performing Job with index ##{index}"
  end
end
