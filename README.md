# README

This is a test project to check the memory usage of Sidekiq background jobs
using with or without ActiveJob.

Apparently, using Sidekiq **without** ActiveJob reduces memory usage drastically.

This a clean Rails 5.1.5 project using Ruby 2.4.3 and Sidekiq 5.1.1.

It simulates a specific use case where one background job enqueues thousands of sub jobs.

To run the test, first start sidekiq with

    bundle exec sidekiq

and then run the test with

    rake sidekiq:test

It will enqueue 250_000 jobs by default.

The results on my local dev environment are:

**With ActiveJob:**

Memory Usage: 522 MB
Time: 379.329 sec

**Without ActiveJob**

Memory Usage: 60 MB
Time: 121.536 sec
