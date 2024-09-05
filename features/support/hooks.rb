Before do |scenario|

    #######################################################################
    # Hook buat Snap Login Page 
    Capybara.app_host = 'https://dev.to'
    Capybara.javascript_driver = :chrome
    @pusathalaman = DevPages.new
    #page.driver.browser.manage.window.resize_to(1920,1080)
    page.driver.browser.manage.window.maximize


  end
  
  After do |scenario|
    ## logic that will run after each scenario
  
    if(scenario.failed?)
      # TODO: take screenshots
      if scenario.failed?
        screenshot_name = "screenshot-#{Time.now.strftime('%Y%m%d-%H%M%S')}.png"
        page.save_screenshot("report/#{screenshot_name}")
        embed("#{screenshot_name}", 'image/png', 'SCREENSHOT')
      end

    end
  
  end
  
  AfterStep do |scenario|
    # logic that will run after each step in a scenario
  end