Given('User berada di halaman login') do
    visit '/login'
    sleep 1
    expect(@pusathalaman.loginpage.has_text_candidate?).to be true
    end
    
When('User login with valid credential') do
      sleep 1
      @inputemail = "aldo.pawoon+snap@gmail.com"
      @inputpassword = "Abc@123456"
      @pusathalaman.loginpage.input_email.click
      @pusathalaman.loginpage.input_email.set @inputemail
      @pusathalaman.loginpage.input_password.set @inputpassword
      @pusathalaman.loginpage.btn_login.click
  
end
    
Then('User verify login success') do
        sleep 2
        expect(@pusathalaman.loginpage.has_btn_Dashboard?).to be true
      
end