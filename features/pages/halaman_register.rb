class RegisterPage < SitePrism::Page
    element :textfield_firstname, '#candidate > form > div > div:nth-child(1) > div:nth-child(1) > input' 
    element :textfield_middlename, '#candidate > form > div > div:nth-child(1) > div:nth-child(2) > input'  
    element :textfield_lastname, '#candidate > form > div > div:nth-child(1) > div:nth-child(3) > input' 
    element :textfield_email, '#candidate > form > div > div:nth-child(2) > div:nth-child(1) > input' 
    element :textfield_password, '#password'
    element :textfield_confirm_password, '#candidate > form > div > div:nth-child(2) > div:nth-child(3) > div > input'
    element :checkbox_agree_terms, '#candidate > form > div > div:nth-child(4) > label > input[type=checkbox]'
    element :checkbox_imnotrobot, '#recaptcha-anchor'  #'#recaptcha-anchor > div.recaptcha-checkbox-checkmark' #'#recaptcha-anchor > div.recaptcha-checkbox-border' #'#recaptcha-anchor' 
    element :btn_register_akun, '#candidate > form > div > div:nth-child(6) > button'

end