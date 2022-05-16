@predefined
Feature: Smoke steps

  @predefined1
  Scenario: Predefined steps for Google
    Given I open url "https://google.com"
    Then I should see page title as "Google"
    Then element with xpath "//input[@name='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@name='q']"
    Then I click on element using JavaScript with xpath "(//input[@name='btnK'])[1]"
    Then I wait for element with xpath "//*[@id='res']" to be present
    Then element with xpath "//*[@id='res']" should contain text "Cucumber"


  @predefined2
  Scenario: Predefined steps for Gibiru
    Given I open url "https://gibiru.com/"
    Then I should see page title as "Gibiru – Protecting your privacy since 2009"
    Then element with xpath "//input[@id='q']" should be present
    When I type "mobile" into element with xpath "//input[@id='q']"
    Then I click on element using JavaScript with xpath "//i[@class='fas fa-search new']"
    Then I wait for element with xpath "//a[@class='gs-title']" to be present
    Then element with xpath "//a[@class='gs-title']" should contain text "mobile"

  @predefined3
  Scenario: Predefined steps for DuckDuckGo
    Given I open url "https://duckduckgo.com/"
    Then I should see page title as "DuckDuckGo — Privacy, simplified."
    Then element with xpath "//input[@name='q']" should be present
    When I type "privacy" into element with xpath "//input[@name='q']"
    Then I click on element using JavaScript with xpath "//input[@id='search_button_homepage']"
    Then I wait for element with xpath "//span[contains(text(),'Privacy - Wikipedia')]" to be present
    Then element with xpath "//span[contains(text(),'Privacy - Wikipedia')]" should contain text "privacy"

  @predefined4
  Scenario: Predefined steps for SwissCows
    Given I open url "https://swisscows.com/"
    Then I should see page title as "Swisscows the alternative, data secure search engine."
    Then element with xpath "//input[@class='input-search']" should be present
    When I type "zen" into element with xpath "//input[@class='input-search']"
    And I wait for 2 sec
    Then I click on element with xpath "//button[@class='search-submit']"
    And I wait for 2 sec
    Then I wait for element with xpath "//h2[contains(text(),'Smart & Green Zen Floating Bluetooth LED Indoor/Ou')]" to be present
    Then element with xpath "//h2[contains(text(),'Smart & Green Zen Floating Bluetooth LED Indoor/Ou')]" should contain text "zen"

  @predefined5
  Scenario:Predefined steps for Searchencrypt
    Given I open url "https://www.searchencrypt.com/"
    Then I should see page title as "Search Encrypt | Home"
    Then element with xpath "//input[@type='text']" should be present
    When I type "fashion" into element with xpath "//input[@type='text']"
    And I wait for 2 sec
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for 2 sec
    Then I wait for element with xpath "//a[contains(text(),'fashion nova')]" to be present
    Then element with xpath "//a[contains(text(),'fashion nova')]" should contain text "fashion"

  @predefined6
  Scenario:Predefined steps for Startpage
    Given I open url "https://www.startpage.com/"
    Then I should see page title as "Startpage - Private Search Engine. No Tracking. No Search History."
    Then element with xpath "//input[@id='q']" should be present
    When I type "star" into element with xpath "//input[@id='q']"
    And I wait for 2 sec
    Then I click on element with xpath "//button[@class='search-form-home__button-desktop']"
    And I wait for 2 sec
    Then element with xpath "//h3[contains(text(),'Star - Wikipedia')]" should be displayed
    Then element with xpath "//h3[contains(text(),'Star - Wikipedia')]" should contain text "star"

  @predefined7
  Scenario:Predefined steps for Yandex
    Given I open url "https://yandex.com/"
    Then I should see page title as "Yandex"
    Then element with xpath "//input[@id='text']" should be present
    When I type "QA" into element with xpath "//input[@id='text']"
    And I wait for 2 sec
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for 2 sec
    Then element with xpath "//b[contains(text(),Quality)]" should be displayed
    Then element with xpath "//b[contains(text(),Quality)]" should contain text "Quality"

  @predefined8
  Scenario:Predefined steps for Ecosia
    Given I open url "https://www.ecosia.org/"
    Then I should see page title as "Ecosia - the search engine that plants trees"
    Then element with xpath "//input[@name='q']" should be present
    When I type "Basil" into element with xpath "//input[@name='q']"
    And I wait for 2 sec
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for 2 sec
    Then element with xpath "//a[contains(text(),'Basil - Wikipedia')]" should be displayed
    Then element with xpath "//a[contains(text(),'Basil - Wikipedia')]" should contain text "Basil"

  @predefined9
  Scenario:Predefined steps for Wiki
    Given I open url "https://www.wiki.com/"
    Then I should see page title as "Wiki.com"
    Then element with xpath "//input[@name='q']" should be present
    When I type "shark" into element with xpath "//input[@name='q']"
    And I wait for 2 sec
    Then I click on element with xpath "//input[@value='Wiki Search']"
    And I wait for 2 sec
    Then I switch to new window
    Then element with xpath "//div[@id='main-message']" should be displayed

  @predefined10
  Scenario:Predefined steps for GiveWater
    Given I open url "https://www.givewater.com/"
    Then I should see page title as "Search the Web to Give Clean Water to Those in Need » giveWater Search Engine"
    Then element with xpath "//section[@id='main']" should be present
    And I wait for 2 sec
    And I click on element with xpath "//button[@class='pum-close popmake-close']"
    Then element with xpath "//input[@id='site-search']" should be present
    When I type "water" into element with xpath "//input[@id='site-search']"
    And I wait for 2 sec
    Then I click on element with xpath "//button[@class='btn-search']"
    Then element with xpath "//a[contains(text(),'Water - Wikipedia')]" should be displayed


  @predefined10
  Scenario:Predefined steps for Ekoru
    Given I open url "https://ekoru.org/"
    Then I should see page title as "Ekoru - every search cleans our oceans"
    Then element with xpath "//input[@id='fld_q']" should be present
    When I type "ocean" into element with xpath "//input[@id='fld_q']"
    And I wait for 2 sec
    Then I click on element using JavaScript with xpath "//div[@id='btn_search']"
    And I wait for 2 sec
    Then I wait for element with xpath "//a[contains(text(),'Océan — Wikipédia')]" to be present


