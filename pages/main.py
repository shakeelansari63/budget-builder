import flet as ft


def MainPage(page: ft.Page):
    page.vertical_alignment = ft.MainAxisAlignment.CENTER
    page.horizontal_alignment = ft.CrossAxisAlignment.CENTER
    page.add(ft.SafeArea(ft.Text("Hello, Flet!")))
