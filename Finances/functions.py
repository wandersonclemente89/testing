# -*- coding: utf-8 -*-
"""
Created on Sun Mar 29 10:28:21 2020

@author: wanderson.barros
"""
import ri
from kivy.uix.boxlayout import BoxLayout
from kivy.uix.gridlayout import GridLayout
from kivy.uix.label import Label
from kivy.uix.button import Button
from kivy.uix.screenmanager import Screen

class ContentPage(Screen):
    def l():
        box = BoxLayout()
        box.orientation = 'vertical'
        gridL = GridLayout(cols=2)
        label_1 = Label(text='Investiment Return:')
        investiment_return = Label(text='oi')
        gridL.add_widget(label_1)
        gridL.add_widget(investiment_return)
        box.add_widget(gridL)
        return box
    l()
        
        

def stock_return_button():
    return ContentPage()