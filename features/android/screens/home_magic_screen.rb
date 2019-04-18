# frozen_string_literal: true

class Home_Magic_Screen
    def initialize
      @layout_name = 'com.magicreatcnative:id/action_bar_root'
      @screen_title = 'new UiSelector().text("Creature")'
      @session_sorcery_title = 'new UiSelector().text("Sorcery")'
      @third_card = '/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[3]/android.widget.ImageView'
    end

    def waitHome
        wait_for_element(id: @layout_name, timeout: 10)
    end

    def homeIsDisplayed
        find_element(id: @layout_name).displayed?
    end

    def getTitle
        find_element(:uiautomator, @screen_title).text
    end

    def scrollTo(string)
        scroll_to(string) 
    end

    def getSessionSorceryTitle
        find_element(:uiautomator, @session_sorcery_title).text
    end

    def clickThirdCard 
        find_element(xpath: @third_card).click
    end

end