# frozen_string_literal: true

class Card_Detail_Screen
    def initialize
      @layout_name = '//XCUIElementTypeApplication[@name="MagicReatcNative"]/XCUIElementTypeWindow[1]'
      @card_image = '//XCUIElementTypeApplication[@name="MagicReatcNative"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeImage[2]'
      @close_button = ''
    end

    def waitCardDetail
        wait_for_element(xpath: @layout_name, timeout: 10)
    end

    def cardDetailIsDisplayed
        find_element(xpath: @layout_name).displayed?
    end

    def cardImageIsDisplayed
        find_element(xpath: @card_image).displayed?
    end

    def pressCloseButton 
        find_element(name: @close_button).click
    end 


end