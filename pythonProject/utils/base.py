from selenium import webdriver
from webdriver_manager.chrome import ChromeDriverManager


class Base(object):

    @staticmethod
    def start_browser(self):
        navegador = webdriver.Chrome(ChromeDriverManager().install())
        return navegador

    @staticmethod
    def quit_browser(self, navegador):
        navegador.quit()
        return
