from behave import *
from utils.base import Base
from pages.googlePage import GoogleHomePage


@given(u'I navigate to "http://www.google.com.br"')
def step_impl(context):
    context.navegador = Base().start_browser()
    context.home_page = GoogleHomePage(context.navegador)


@when(u'I search for "Wanderson"')
def step_impl(context):
    context.page_results = context.home_page.search_for("Wanderson")


@then(u'I should see the page title as "Wanderson - Pesquisa Google"')
def step_impl(context):
    assert (context.page_results.get_page_title() == 'Wanderson - Pesquisa Google')
