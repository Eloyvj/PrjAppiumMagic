Feature: Tests for home screen

    Scenario: Launch app
        Given I launch app Magic
        Then I see the title "Creature" in top of screen

    Scenario: Launch app and scroll screen
        Given I launch app Magic
        When I scroll the screen until "Sorcery" session
        Then I see the title "Sorcery"

    Scenario: Click in third card
        Given I launch app Magic
        When I click in third card
        Then I see the card image


        