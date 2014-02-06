require 'gmail'

def send_mail(address,name)
  gmail = Gmail.connect("자신의 Gmail 계정 주소","자신의 Gmail 계정 비밀번호")
  puts gmail.logged_in?
  gmail.deliver do
    to address
    subject "This is only for you, #{name}"
    text_part do
      body  "I miss you so bad, #{name}.."
    end
  end

  gmail.logout
end
    
address_list = {:Charles => "첫번째 이메일 주소", :John => "두번째 이메일 주소", :Miranda => "세번째 이메일 주소"}
address_list.each do |name,addr|
  send_mail(addr,name)
end
