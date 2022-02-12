class ItemMailer < ApplicationMailer
    def new_item
        @item = params[:item]
        @user = params[:user]
        mail(to: @user.email, subject: "#{@item.title} was just added to Amazon!")
    end
end
