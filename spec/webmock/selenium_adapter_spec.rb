# frozen_string_literal: true

RSpec.describe Webmock::SeleniumAdapter do
  it "has a version number" do
    expect(Webmock::SeleniumAdapter::VERSION).not_to be nil
  end

  it "does not allow unregistered requests" do
    driver = Selenium::WebDriver.for(:chrome)

    expect { driver.navigate.to "https://httpstat.us/200" }.to raise_error(WebMock::NetConnectNotAllowedError)

    drvier.quit
  end
end
