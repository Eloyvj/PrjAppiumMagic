# frozen_string_literal: true

class Card_Detail_Screen
    def initialize
      @layout_name = 'android:id/content'
      @card_image = 'com.magicreatcnative:id/card_image'
      @close_button = ''
    end

    def waitCardDetail
        wait_for_element(id: @layout_name, timeout: 10)
    end

    def cardDetailIsDisplayed
        find_element(id: @layout_name).displayed?
    end

    def cardImageIsDisplayed
        find_element(xpath: @card_image).displayed?
    end

    def pressCloseButton 
        find_element(name: @close_button).click
    end 


end