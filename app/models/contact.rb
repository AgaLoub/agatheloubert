class Contact < MailForm::Base
    include MailForm::Delivery
  attribute :nom,      :validate => true, :message => "blah blah blah"
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message,     :validate => true
  attribute :nickname,  :captcha  => true

  def headers
    {
      :subject => "Prise de contact",
      :to => "agathe.loubert@gmail.com",
      :from => %("#{nom}" <#{email}>)
    }
  end
end
