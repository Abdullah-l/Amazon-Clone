class SendDailySummaryJob < ApplicationJob
  queue_as :default

  def perform(user)
    AdminDailySummaryMailer.with(user: User.first).daily_summary.deliver_now
  end
end
