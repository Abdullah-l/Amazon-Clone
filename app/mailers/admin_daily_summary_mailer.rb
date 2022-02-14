class AdminDailySummaryMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.admin_daily_summary_mailer.daily_summary.subject
  #
  def daily_summary
    @admin = params[:user]
    @users = User.where("Date(created_at) = ?", Date.today)
    @items = Item.where("Date(created_at) = ?", Date.today)
    mail(to: @admin.email, subject: "Your Daily Summary")
  end
end
