module Erp
  module Songhanhcts
    module Frontend
      class ContactUsController < Erp::Frontend::FrontendController
        def index
          @company_info = Erp::Contacts::Contact.get_main_contact
          
          #if params[:contact].present?
          #  @contact = Erp::Contacts::Contact.new(contact_params)
          #  @contact.contact_type = Erp::Contacts::Contact::TYPE_PERSON
          #  if @contact.save and params[:msg].present?
          #    @msg = Erp::Contacts::Message.new(message_params)
          #    @msg.contact_id = @contact.id
          #    # @todo get email receive contact
          #    @msg.to_contact_id = Erp::Contacts::Contact.first.id
          #    respond_to do |format|
          #      if @msg.save
          #        Erp::Contacts::ContactMailer.sending_email_contact(@msg).deliver_now
          #        format.html {
          #          redirect_back(fallback_location: @contact, notice: 'Yêu cầu đã gửi thành công.\n Chúng tôi sẽ liên hệ cho bạn trong thời gian sớm nhất.')
          #        }
          #      end
          #    end
          #  else
          #    redirect_back(fallback_location: @contact, flash: { error: 'Không thể gửi đi do một số trường đang bị bỏ trống.' })
          #  end
          #end
        end
        
      end
    end
  end
end