# -*- coding: utf-8 -*-
# rpcontacts/database.py

"""This module provides a database connection."""

from PyQt6.QtWidgets import QMessageBox
from PyQt6.QtSql import QSqlDatabase

def createConnection(databaseName):
    """Create and open a database connection."""
    connection = QSqlDatabase.addDatabase("QSQLITE")
    connection.setDatabaseName(databaseName)

    if not connection.open():
        QMessageBox.warning(
            None,
            "RP Contact",
            f"Database Error: {connection.lastError().text()}",
        )
        return False

    return True