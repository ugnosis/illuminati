# -*- coding: utf-8 -*-

"""This module provides views to manage the contacts table."""

from PyQt6.QtWidgets import (
    QAbstractItemView,
    QHBoxLayout,
    QMainWindow,
    QPushButton,
    QTableView,
    QVBoxLayout,
    QWidget,
)

from .model import ContactsModel

class Window(QMainWindow):
    """Main Window."""
    def __init__(self, parent=None):
        """Initializer."""
        super().__init__(parent)
        self.setWindowTitle("Python GUI")
        self.resize(900, 700)
        self.centralWidget = QWidget()
        self.setCentralWidget(self.centralWidget)
        self.layout = QHBoxLayout()
        self.centralWidget.setLayout(self.layout)
        
        self.contactsModel = ContactsModel()
        self.setupUI()

    def setupUI(self):
        """Setup the main window's GUI."""
        # Create the table view widget
        self.table = QTableView()
        self.table.setModel(self.contactsModel.model)

        #self.table.setSelectionBehavior(QAbstractItemView.SelectRows)
       
        self.table.resizeColumnsToContents()

        # Lay out the GUI
        layout = QVBoxLayout()
        layout.addStretch()
        self.layout.addWidget(self.table)
        self.layout.addLayout(layout)