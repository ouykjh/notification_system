
require 'rufus-scheduler'

s = Rufus::Scheduler.singleton

s.every '5s' do
  MessagesWorker.perform_async
end
