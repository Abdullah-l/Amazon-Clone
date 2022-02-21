# Preview all emails at http://localhost:3000/rails/mailers/admin_daily_summary_mailer
class AdminDailySummaryMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/admin_daily_summary_mailer/daily_summary
  def daily_summary
    AdminDailySummaryMailer.daily_summary
  end

end
