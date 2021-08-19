from robot.libraries.BuiltIn import BuiltIn
from appium.webdriver.common.touch_action import TouchAction
from robot.api.deco import keyword
# from selenium import webdriver
# ...
@keyword(name="Scroll Down Up")
def scroll_down_up(element_class, p_origin, p_target):
    appiumLib = BuiltIn().get_library_instance('AppiumLibrary')
    driver = appiumLib._current_application()
    
    element_origin = driver.find_elements_by_class_name(element_class)[int(p_origin)]
    element_target = driver.find_elements_by_class_name(element_class)[int(p_target)]
    
    actions = TouchAction(driver)
    actions.long_press(element_origin).move_to(element_target)
    actions.release()
    actions.perform()
    # driver.execute_script("mobile: scroll", {"direction": "down"})
    # actions = TouchAction(driver)
    # actions.scroll_from_element(element, 10, 100)
    # actions.scroll(element, 10, 100)
    # actions.perform()
    # actions.press(x=154,y=1782).move_to(x=149, y=9).release().perform()
    # ta = TouchAction(driver)
    # ta.tap(x=100, y=200).wait(100).move_to(x=100, y=80).wait(100).release()
    # ta.perform()
    
    # action = webdriver.TouchActions(driver)
    # action.scroll_from_element(year, 0, 0).release(0, 10).perform()