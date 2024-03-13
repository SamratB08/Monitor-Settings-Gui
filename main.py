import sys

from PySide6.QtQml import QQmlApplicationEngine
from PySide6.QtWidgets import QApplication

app = QApplication(sys.argv)

engine = QQmlApplicationEngine()

engine.load("main.qml")

sys.exit(app.exec())
