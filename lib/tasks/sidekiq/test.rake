namespace :sidekiq do
  desc 'Sidekiq performance test with ActiveJob'
  task :test => :environment do
    MainJob.perform_later
  end
end
