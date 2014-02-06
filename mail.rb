require 'gmail'

gmail = Gmail.connect("자신의 Gmail 계정 주소","자신의 Gmail 계정 비밀번호")
puts gmail.logged_in?
gmail.deliver do
  to "받는 사람 이메일 주소"
  subject "이메일 제목"
  text_part do
    body  "이메일 내용"
  end
end

gmail.logout
