# -*- coding: utf-8 -*-
"""
Created on Sat Mar 28 21:24:09 2020

@author: wanderson.barros
"""


from kivy.app import App
from kivy.config import Config
from kivy.uix.screenmanager import ScreenManager, Screen


Config.set('graphics', 'resizable', '0') 
Config.set('graphics', 'width', '375') 
Config.set('graphics', 'height', '667') 


class Manager(ScreenManager):
    pass        

class HomePage(Screen):
    pass

class ContentPage(Screen):
    pass
      

class MyApp(App):
   def build(self):
      self.title = 'Stock Analysis'
      return Manager()  

if __name__ == '__main__':
    MyApp().run()
