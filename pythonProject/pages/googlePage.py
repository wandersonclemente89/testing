from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.webdriver import WebDriver


class GoogleResultPage(object):
    def __init__(self, navegador):
        self._navegador = navegador

    def get_page_title(self):
        return self._navegador.title



class GoogleHomePage(object):

    def __init__(self,  navegador):
        self._navegador = navegador
        self._navegador.get('http://www.google.com.br')

    def search_for(self, search_term):
        search_field_element = self._navegador.find_element(By.NAME, "q")
        search_field_element.send_keys(search_term)
        search_field_element.submit()
        return GoogleResultPage(self._navegador)


