# frozen_string_literal: true

require 'selenium-cucumber'
require 'selenium-webdriver'
require 'rspec'

Given 'i am on the google page in the search option' do
  navigate_to(app_path_google)
end

When 'i am looking for the word {string}' do |word|
  wait_displays(25, %w[q], :name)
  is_element_enabled(:name, 'btnK')
  enter_text(:name, word, 'q')
  submit(:name, 'btnK')
end

And 'the right word is presented {string}' do |word_corrected|
  wait_for_element_to_display(:xpath, "//i[contains(.,'#{word_corrected}')]", 20)
  get_element_text(:xpath, "//i[contains(.,'')]").should eql? word_corrected
end

Then 'i select it and I validate that more than {int} results are presented' do |number_results|
  wait_displays(25, %w[//i[contains(.,'')]], :xpath)
  click(:xpath, "//i[contains(.,'')]")
  wait_displays(25, %w[(//div[contains(@class,'ellip')])], :xpath)
  results = find_elements(:xpath, "(//div[contains(@class,'ellip')])").size
  (results > number_results).should eql? true
end

Then 'i select it and I validate that the results contain the word {string}' do |text|
  wait_displays(25, %w[//i[contains(.,'')]], :xpath)
  click(:xpath, "//i[contains(.,'')]")
  wait_displays(25, %w[(//span[@class='st'])], :xpath)
  search = find_elements(:xpath, "(//span[@class='st'])")
  search.map { |e| e.text.downcase.include? text }.all?(true).should eql? true
end
