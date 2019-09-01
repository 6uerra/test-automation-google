module Helpers
  def wait_displays(time, elements, type_tag)
    wait_element_displays(time, elements, type_tag)
    wait_element_location(time, elements, type_tag)
  end

  # return the n elements found
  def find_elements(type_tag, elements)
    $driver.find_elements(type_tag, elements)
  end

  private

  def wait_element_displays(time, elements, type_tag)
    elements.map do |tag|
      wait_for_element_to_display(type_tag, tag, time / 2)
    end.all?
  end

  def wait_element_location(time, elements, type_tag)
    Selenium::WebDriver::Wait.new(timeout: time / 2).until do
      elements.map do |tag|
        location = $driver.find_element(type_tag, tag).location
        location.x >= 0 && location.y >= 0
      end.all?
    end
  end
end

World(Helpers)
