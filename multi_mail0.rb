require 'gmail'

def send_mail(address)
  gmail = Gmail.connect("자신의 Gmail 계정 주소","자신의 Gmail 계정 비밀번호")
  puts gmail.logged_in?
  gmail.deliver do
    to address
    subject "This is the first email from Ruby"
    text_part do
      body  "Hello world, Grrrr!"
    end
  end

  gmail.logout
end

address_list = ["첫번째 이메일 주소", "두번째 이메일 주소", "세번째 이메일 주소"]
address_list.each do |addr|
  send_mail(addr)
end
