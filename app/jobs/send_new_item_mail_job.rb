class SendNewItemMailJob < ApplicationJob
  queue_as :default

  def perform(item)
    users = User.all
    for user in users
      ItemMailer.with(item: item, user: user).new_item.deliver_later
    end
  end
end
