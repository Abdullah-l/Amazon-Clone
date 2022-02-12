class ItemMailer < ApplicationMailer
    def new_item
        @item = params[:item]
        for user in User.all
            mail(to: user.email) do |format|
                format.html { render layout: 'my_layout' }
                format.text
            end  
        end
    end
end
