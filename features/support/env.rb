require 'selenium-webdriver'

    Before    do

               #setting browser path
               Selenium::WebDriver::Chrome.driver_path="C:/RoshTesting/RubyCucumber/features/Browsers/chromedriver.exe"

              #creating browser instance for chrome browser
              $driver = Selenium::WebDriver.for :chrome

              # Maximizing the Browser
              $driver.manage.window.maximize
              # Deleting cookies
              $driver.manage.delete_all_cookies
              # setting implicit wait to 30seconds
              $driver.manage.timeouts.implicit_wait =20

              #Launching the URL
              $driver.get("https://www.slideshare.net/")


    end


    After  do
      $driver.close
    end