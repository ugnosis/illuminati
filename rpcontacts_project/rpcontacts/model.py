# -*- coding: utf-8 -*-
# rpcontacts/model.py

"""This module provides a model to manage the contacts table."""

from PyQt6.QtCore import Qt
from PyQt6.QtSql import QSqlTableModel

class ContactsModel:
    def __init__(self):
        self.model = self._createModel()

    @staticmethod
    def _createModel():
        """Create and set up the model."""
        tableModel = QSqlTableModel()
        tableModel.setTable("city")

        #tableModel.setEditStrategy(QSqlTableModel.OnFieldChange)

        tableModel.select()
        #headers = ("ID", "Name")
        #for columnIndex, header in enumerate(headers):
        #    tableModel.setHeaderData(columnIndex, Qt.Horizontal, header)
        return tableModel