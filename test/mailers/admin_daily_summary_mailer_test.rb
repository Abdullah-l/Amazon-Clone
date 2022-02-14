require "test_helper"

class AdminDailySummaryMailerTest < ActionMailer::TestCase
  test "daily_summary" do
    mail = AdminDailySummaryMailer.daily_summary
    assert_equal "Daily summary", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
