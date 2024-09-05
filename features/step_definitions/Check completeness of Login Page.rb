require 'selenium-webdriver'

Given('User is on login page') do
    visit '/enter'
    sleep 1
    expect(@pusathalaman.loginpage.has_logo?).to be true
    end
    
When('User check completeness of login page') do
      sleep 1
      expect(@pusathalaman.loginpage.has_logo?).to be true
      expect(@pusathalaman.loginpage.has_headline?).to be true
      expect(@pusathalaman.loginpage.has_textDevCommunity?).to be true

      expect(@pusathalaman.loginpage.has_logoApple?).to be true
      expect(@pusathalaman.loginpage.has_logoFacebook?).to be true
      expect(@pusathalaman.loginpage.has_logoForem?).to be true
      expect(@pusathalaman.loginpage.has_logoGithub?).to be true
      expect(@pusathalaman.loginpage.has_logoGoogle?).to be true
      expect(@pusathalaman.loginpage.has_logoTwitter?).to be true

      expect(@pusathalaman.loginpage.has_textConinuewithApple?).to be true
      expect(@pusathalaman.loginpage.has_textConinuewithFacebook?).to be true
      expect(@pusathalaman.loginpage.has_textConinuewithForem?).to be true
      expect(@pusathalaman.loginpage.has_textConinuewithGithub?).to be true
      expect(@pusathalaman.loginpage.has_textConinuewithGoogle?).to be true
      expect(@pusathalaman.loginpage.has_textConinuewithTwitter?).to be true

      expect(@pusathalaman.loginpage.has_btnConinuewithApple?).to be true
      expect(@pusathalaman.loginpage.has_btnConinuewithFacebook?).to be true
      expect(@pusathalaman.loginpage.has_btnConinuewithForem?).to be true
      expect(@pusathalaman.loginpage.has_btnConinuewithGithub?).to be true
      expect(@pusathalaman.loginpage.has_btnConinuewithGoogle?).to be true
      expect(@pusathalaman.loginpage.has_btnConinuewithTwitter?).to be true

      # Scroll down by 1000 pixels
      $driver.execute_script('window.scrollBy(0, 1000);')

      expect(@pusathalaman.loginpage.has_textOr?).to be true
      expect(@pusathalaman.loginpage.has_textEmail?).to be true
      expect(@pusathalaman.loginpage.has_textPassword?).to be true
      expect(@pusathalaman.loginpage.has_textFieldEmail?).to be true
      expect(@pusathalaman.loginpage.has_textFieldPassword?).to be true

      expect(@pusathalaman.loginpage.has_checkbox?).to be true
      expect(@pusathalaman.loginpage.has_textRememberMe?).to be true
      expect(@pusathalaman.loginpage.has_linkForgotPassword?).to be true
      expect(@pusathalaman.loginpage.has_btnLogin?).to be true
      expect(@pusathalaman.loginpage.has_textBySigningIn?).to be true
      expect(@pusathalaman.loginpage.has_linkPrivacyPolicy?).to be true
      expect(@pusathalaman.loginpage.has_linkTermsOfUse?).to be true
      expect(@pusathalaman.loginpage.has_linkCodeOfConduct?).to be true

      expect(@pusathalaman.loginpage.has_textNewtodevCommunity?).to be true
      expect(@pusathalaman.loginpage.has_linkCreateAccount?).to be true

  
end
    
Then('All element in login page is visible') do
    if @pusathalaman.loginpage.logo.visible?
        puts "Element is visible"
    else
        puts "Element is not visible"
    end
end