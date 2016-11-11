class PurchaseMailer < ActionMailer::Base
layout 'purchase_mailer'

 default from: "Test <edigenuis@gmail.com>"

 def purchase_receipt purchase
 @purchase = purchase

 mail to: purchase.email, subject: "Thanks for your purchase!"

  end

end