class LoginPage < SitePrism::Page
    element :input_email, '#email' 
    element :input_password, '#candidate > form > div > div:nth-child(2) > div > input'  
    element :btn_login, '#candidate > form > div > button' 
    element :text_candidate, '#page-top > section > div > div > div:nth-child(2) > div > ul > li:nth-child(1) > a' 
    element :btn_Dashboard, '#secondNav > li:nth-child(1) > a'

end