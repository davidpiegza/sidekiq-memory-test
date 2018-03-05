class MainJob < ApplicationJob
  queue_as :default

  AMOUNT_SUB_JOBS = 250_000

  def perform
    AMOUNT_SUB_JOBS.times do |index|
      SubJob.perform_later(index)
    end
  end
end
