class SubJob < ApplicationJob
  queue_as :default

  def perform(index)
    puts "Performing Job with index ##{index}"
  end
end
