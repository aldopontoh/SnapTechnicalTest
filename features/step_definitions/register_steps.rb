Given('User berada di halaman register') do
    visit '/register'
    sleep 1
    expect(@pusathalaman.registerpage.has_textfield_firstname?).to be true
    end
    
When('User fill register form') do
      sleep 1
      
    # fungsi di ruby untuk generate 3 random number
    def generate_random_characters
        characters = ('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a
        random_characters = []
      
        3.times do
          random_characters << characters.sample
        end
      
        random_characters.join
    end
      
    # Memanggil fungsi untuk mendapatkan tiga karakter acak
    random_characters = generate_random_characters
      
    # Menyisipkan hasil ke dalam teks
    # text = "Here are three random characters: #{random_characters}"
      
    # Mencetak teks
    # puts text
    
    # @inputfirstname = "Aldo"
    # @inputmiddlename = "Dado"
    # @inputlastnamelastname = "Ado"
    # @email = "aldo.pawoon+snapwer@gmail.com"
    # @password = "Asd@123456"
    # @confirm = "Asd@123456"

    @pusathalaman.registerpage.textfield_firstname.set "Aldo"
    @pusathalaman.registerpage.textfield_middlename.set "Dad"
    @pusathalaman.registerpage.textfield_lastname.set "dado"
    @pusathalaman.registerpage.textfield_email.set "aldo.pawoon+snap#{random_characters}@gmail.com"
    @pusathalaman.registerpage.textfield_password.set "Asd@123456"
    @pusathalaman.registerpage.textfield_confirm_password.set "Asd@123456"
    @pusathalaman.registerpage.checkbox_agree_terms.click

    #di posisi ini automation tidak bisa dilanjutkan karena ada CAPTCHA
    @pusathalaman.registerpage.checkbox_imnotrobot.click

end

And('User klik button register') do
    sleep 1
    @pusathalaman.registerpage.btn_register_akun.click

end
    
Then('User success register') do
        sleep 2
        expect(@pusathalaman.loginpage.has_text_candidate?).to be true
      
end