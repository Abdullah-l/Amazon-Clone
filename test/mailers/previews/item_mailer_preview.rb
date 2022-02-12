# Preview all emails at http://localhost:3000/rails/mailers/item_mailer
class ItemMailerPreview < ActionMailer::Preview
    def new_item
        ItemMailer.with(item: Item.last).new_item
      end
end
