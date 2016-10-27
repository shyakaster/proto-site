class Contact < MailForm::Base
    attribute :contacts_name, :validate => true
    attribute :contacts_email, :validate => /\A[^@\s]+@([^@.\s]+\.)+[^@.\s]+\z/
    attribute :contacts_phone, :validate => true
    attribute :contacts_message, :validate => true
    attribute :nickname, :captcha => true
    def headers
        {
        :subject => "Contact Form",
        :to => "sales@africarlogistics.tours",
        :from => %("#{contacts_name}" <#{contacts_email}>)
        }
    end
end