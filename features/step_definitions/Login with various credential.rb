Given(/^User is on login page #variouscred$/) do
    visit '/enter'
    sleep 1
    expect(@pusathalaman.loginpage.has_logo?).to be true
end
    
When(/^User login with "(.*)"$/) do | variouscred |
    @validemail = "renaldopontoh@gmail.com"
    @validpassword = "12345678"
    @invalidemail = "dummy@gmail.com"
    @invalidpassword = "12345687"

    p variouscred
    case variouscred
    when 'valid email valid password'
        @pusathalaman.loginpage.textFieldEmail.set @validemail
        @pusathalaman.loginpage.textFieldPassword.set @validpassword
        @pusathalaman.loginpage.btnLogin.click
    when 'valid email empty password'
        @pusathalaman.loginpage.textFieldEmail.set @validemail
        @pusathalaman.loginpage.textFieldPassword.set ''
        @pusathalaman.loginpage.btnLogin.click
    when 'empty email valid password'
        @pusathalaman.loginpage.textFieldEmail.set ''
        @pusathalaman.loginpage.textFieldPassword.set @validpassword
        @pusathalaman.loginpage.btnLogin.click
    when 'empty email empty password'
        @pusathalaman.loginpage.textFieldEmail.set ''
        @pusathalaman.loginpage.textFieldPassword.set ''
        @pusathalaman.loginpage.btnLogin.click
    when 'invalid email invalid password'
        @pusathalaman.loginpage.textFieldEmail.set @invalidemail
        @pusathalaman.loginpage.textFieldPassword.set @invalidpassword
        @pusathalaman.loginpage.btnLogin.click
    when 'valid email invalid password'
        @pusathalaman.loginpage.textFieldEmail.set @validemail
        @pusathalaman.loginpage.textFieldPassword.set @invalidpassword
        @pusathalaman.loginpage.btnLogin.click
    when 'invalid email valid password'
        @pusathalaman.loginpage.textFieldEmail.set @invalidemail
        @pusathalaman.loginpage.textFieldPassword.set @validpassword
        @pusathalaman.loginpage.btnLogin.click
    end
end
    
Then(/^Various expectation is shown "(.*)"$/) do | variousexp |
    sleep 1

    p variousexp
    case variousexp
    when 'directed to homepage'
        sleep 2
        expect(@pusathalaman.homepage.has_logo?).to be true
    when 'error message #1'
        sleep 2
        expect(@pusathalaman.loginpage.has_errorMessageLogin?).to be true
    when 'error message #2'
        sleep 2
        expect(@pusathalaman.loginpage.has_errorMessageLogin?).to be true
    when 'error message #3'
        sleep 2
        expect(@pusathalaman.loginpage.has_errorMessageLogin?).to be true
    when 'error message #4'
        sleep 2
        expect(@pusathalaman.loginpage.has_errorMessageLogin?).to be true
    when 'error message #5'
        sleep 2
        expect(@pusathalaman.loginpage.has_errorMessageLogin?).to be true
    when 'error message #6'
        sleep 2
        expect(@pusathalaman.loginpage.has_errorMessageLogin?).to be true
    end
    p 'Scenario Berhasil'
    sleep 1
   
end