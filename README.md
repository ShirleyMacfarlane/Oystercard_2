# oyster_card

This is the second week of Makers. We will create an oyster card system.

1. Setting up a Gemfile
  * construct a valid Gemfile - Done
  * specify a correct source for gems - Done
  * specify the latest Ruby version - Done
  * add the rspec gem to ‘test’ and ’development’ groups - Done
  * commit only this Gemfile - Done

2. Create RSpec conventional files
  * Generate conventional files (helper and config) for an RSpec project using a command-line option of the rspec executable file - Done (rspec --init)
  * Follow RSpec naming convention for files and folders - Done
  * Create a test file for the Oystercard class without any tests but with a describe block (doesn't exist yet) - Done (Test failed)

3. Learn debugging basics
  * Write down the type of error in the issue comments - Done (NameError)
  * Write down the file path where the error happened - Done (./spec/oyster_card_spec.rb)
  * Write down the line number of the error - Done (Line 1)
  * Use the Ruby Documentation to find out what the error means - Done (There is no class to initialise)
  * Suggest one way of solving the error - Done (Make the class)

4. Add the balance
  * Write up a plan for how you will interact with your code and manually test in IRB - Done
    ### Plan
    * Feature test 
    * Write unit test following the red green refactor cycle

  * Create a unit test for the Oystercard class - Done
  * Write a failing test that checks that a new card has a balance - Done
  * Write code that will make this test pass - Done
  * Now refactor by setting the balance in initialize using an instance variable - Done
  * Remove the balance method entirely and replace with an attr_reader - Done

5. Enable top up functionality 
 * Write up a plan for how you will interact with your code and manually test in IRB.
  ### Plan
  * Feature test - oystercard.top_up(arg)
  * Unit test - test for a top_up method with an argument
  * Unit test - check top_up is added to balance
 * Write a test for the top_up method - Done
 * Make sure the test fails before implementing the method - Done
 * Implement the method to make the test pass - Done