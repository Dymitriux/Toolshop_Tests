from robot.api.deco import library, keyword
from webdriver_manager import chrome, firefox, microsoft


@library
class BrowserManager:

    @keyword
    def download_driver_return_path(self, browser: str):
        if browser.lower() == "chrome":
            return chrome.ChromeDriverManager().install()
        elif browser.lower() == "firefox":
            return firefox.GeckoDriverManager().install()
        elif browser.lower() == "edge":
            return microsoft.EdgeChromiumDriverManager().install()
        else:
            raise TypeError("Unsupported browser type, given browser: " + browser)
