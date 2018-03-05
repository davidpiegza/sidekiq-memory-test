class MainJob
  include Sidekiq::Worker

  sidekiq_options queue: 'default'

  AMOUNT_SUB_JOBS = 250_000

  def perform
    AMOUNT_SUB_JOBS.times do |index|
      SubJob.perform_async(index)
    end
  end
end
