import unittest
from utils.base import Base
from pages.googlePage import GoogleHomePage


class GoogleTest(unittest.TestCase):
    def test_google_search(self):
        navegador = Base.start_browser()

        self.assertEqual(
            GoogleHomePage(navegador)
            .search_for("Wanderson")
            .get_page_title(), "Wanderson - Pesquisa Google")

        Base.quit_browser(navegador)


if __name__ == '__main__':
    unittest.main()
