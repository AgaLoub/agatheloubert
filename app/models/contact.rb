# class Contact < MailForm::Base
#     include MailForm::Delivery
#   attribute :nom,      :validate => true, :message => "blah blah blah"
#   attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
#   attribute :message,     :validate => true
#   attribute :nickname,  :captcha  => true
#   validates :nom, :email, :message, presence: true

#   def headers
#     {
#       :subject => "Prise de contact",
#       :to => "agaloubert@hotmail.com",
#       :from => %("#{nom}" <#{email}>)
#     }
#   end
# end


class Contact < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message
  attribute :nickname,  :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "My Contact Form",
      :to => "your_email@example.org",
      :from => %("#{name}" <#{email}>)
    }
  end
end
