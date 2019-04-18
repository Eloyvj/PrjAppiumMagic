# frozen_string_literal: true
require 'rspec/expectations'

Given("I launch app Magic") do
    @home = Home_Magic_Screen.new
    @home.waitHome
    @isDisplayed = @home.homeIsDisplayed
    expect(@isDisplayed).to be true
  end
  
  When("I scroll the screen until {string} session") do |string|
    if ENV['PLATFORM'] == 'ios'
      @home.scroll_to_down(4)
    elsif ENV['PLATFORM'] == 'android'
      @home.scrollTo(string)
    end  
  end

  When("I click in third card") do
    @home.clickThirdCard
  end
  
  Then("I see the title {string}") do |string|
    @sorceryTitle = @home.getSessionSorceryTitle()
    expect(@sorceryTitle).to eq(string)
  end

  Then("I see the title {string} in top of screen") do |string|
    @title = @home.getTitle
    expect(@title).to eq(string)
  end

  Then("I see the card image") do
    @cardDetail = Card_Detail_Screen.new
    @cardDetail.waitCardDetail
    @isDisplayed = @cardDetail.cardDetailIsDisplayed
    expect(@isDisplayed).to be true
  end