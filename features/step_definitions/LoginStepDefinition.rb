      Given /^The user is on the home page and clicks on Login link$/ do
            $driver.find_element(:link,'Login').click
      end

      When /^Enters invalid username and valid password$/ do
            $driver.find_element(:id,'user_login').send_key("afasdfmail.com")
            $driver.find_element(:id,'user_password').send_key("dsjfskljfl")
      end

      And /^Clicks on login button$/ do
            $driver.find_element(:id,'login_from_loginpage').click
      end

      Then /^Error message should be displayed to the user$/ do
            errMsg = $driver.find_element(:xpath,"//*[contains(text(),'Incorrect username/email or password.')]").displayed?
            #Verify the error message
            puts errMsg

            if(errMsg==true)
              puts "Test case Pass"
            else puts "Test case Fail"
            end
      end