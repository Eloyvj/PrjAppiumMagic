# frozen_string_literal: true

class Home_Magic_Screen
    def initialize
      @layout_name = '(//XCUIElementTypeOther[@name="Creature Sorcery Enchantment Instant"])[7]/XCUIElementTypeOther[2]'
      @screen_title = 'Creature'
      @session_sorcery_title = 'Sorcery'
      @third_card = '(//XCUIElementTypeOther[@name="Creature Sorcery Enchantment Instant"])[7]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeOther/XCUIElementTypeOther[3]'
    end

    def waitHome
        wait_for_element(xpath: @layout_name, timeout: 10)
    end

    def homeIsDisplayed
        find_element(xpath: @layout_name).displayed?
    end

    def getTitle
        find_element(name: @screen_title).text
    end

    def scroll_to_down(number)
        number.times do
            execute_script 'mobile: scroll', direction: 'down'
        end
    end

    def getSessionSorceryTitle
        find_element(name: @session_sorcery_title).text
    end

    def clickThirdCard 
        find_element(xpath: @third_card).click
    end

end