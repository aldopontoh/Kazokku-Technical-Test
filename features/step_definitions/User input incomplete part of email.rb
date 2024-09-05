require 'capybara'
require 'capybara/dsl'
require 'selenium-webdriver'

Capybara.default_driver = :selenium_chrome
Capybara.app_host = 'https://dev.to'
include Capybara::DSL

Given(/^User is on login page #incompleteemail$/) do
    visit '/enter'
    sleep 1
    expect(@pusathalaman.loginpage.has_logo?).to be true
end
    
When(/^User input inclomplete part of email "(.*)"$/) do | incompleteemail |
    @without_et = "renaldopontohgmail.com"
    @noCharAfterEt = "renaldopontoh@"
    @noCharBeforeEt = "@gmail.com"
    @spaceBeforeEt = "renaldopontoh @gmail.com"
    @spaceAfterEt = "renaldopontoh@ gmail.com"
    @specialCharAfterEt = "renaldopontoh@#$%^gmail.com"

    p incompleteemail
    case incompleteemail
    when 'without @'
        @pusathalaman.loginpage.textFieldEmail.set @without_et
        @pusathalaman.loginpage.textFieldPassword.set ''
        @pusathalaman.loginpage.btnLogin.click
    when 'no characters after @'
        @pusathalaman.loginpage.textFieldEmail.set @noCharAfterEt
        @pusathalaman.loginpage.textFieldPassword.set ''
        @pusathalaman.loginpage.btnLogin.click
    when 'no characters before @'
        @pusathalaman.loginpage.textFieldEmail.set @noCharBeforeEt
        @pusathalaman.loginpage.textFieldPassword.set ''
        @pusathalaman.loginpage.btnLogin.click
    when 'space before @'
        @pusathalaman.loginpage.textFieldEmail.set @spaceBeforeEt
        @pusathalaman.loginpage.textFieldPassword.set ''
        @pusathalaman.loginpage.btnLogin.click
    when 'space after @'
        @pusathalaman.loginpage.textFieldEmail.set @spaceAfterEt
        @pusathalaman.loginpage.textFieldPassword.set ''
        @pusathalaman.loginpage.btnLogin.click
    when 'special character after @'
        @pusathalaman.loginpage.textFieldEmail.set @specialCharAfterEt
        @pusathalaman.loginpage.textFieldPassword.set ''
        @pusathalaman.loginpage.btnLogin.click
    end
end
    
Then(/^Various error message in textfield email is shown "(.*)"$/) do | variouserrormessage |
    email_field = @pusathalaman.loginpage.textFieldEmail
    
    p variouserrormessage
    case variouserrormessage
    when 'error message #1'
        sleep 2
        validation_message = page.driver.browser.execute_script("return arguments[0].validationMessage;", email_field.native)
        puts "Pesan Error: #{validation_message}"
    when 'error message #2'
        sleep 2
        validation_message = page.driver.browser.execute_script("return arguments[0].validationMessage;", email_field.native)
        puts "Pesan Error: #{validation_message}"
    when 'error message #3'
        sleep 2
        validation_message = page.driver.browser.execute_script("return arguments[0].validationMessage;", email_field.native)
        puts "Pesan Error: #{validation_message}"
    when 'error message #4'
        sleep 2
        validation_message = page.driver.browser.execute_script("return arguments[0].validationMessage;", email_field.native)
        puts "Pesan Error: #{validation_message}"
    when 'error message #5'
        sleep 2
        validation_message = page.driver.browser.execute_script("return arguments[0].validationMessage;", email_field.native)
        puts "Pesan Error: #{validation_message}"
    when 'error message #6'
        sleep 2
        validation_message = page.driver.browser.execute_script("return arguments[0].validationMessage;", email_field.native)
        puts "Pesan Error: #{validation_message}"
    end
    p 'Scenario Berhasil'
    sleep 1
   
end