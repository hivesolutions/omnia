#!/usr/bin/python
# -*- coding: utf-8 -*-

# Hive Omnia System
# Copyright (C) 2008-2015 Hive Solutions Lda.
#
# This file is part of Hive Omnia System.
#
# Hive Omnia System is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# Hive Omnia System is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with Hive Omnia System. If not, see <http://www.gnu.org/licenses/>.

__author__ = "João Magalhães <joamag@hive.pt>"
""" The author(s) of the module """

__version__ = "1.0.0"
""" The version of the module """

__revision__ = "$LastChangedRevision$"
""" The revision number of the module """

__date__ = "$LastChangedDate$"
""" The last change date of the module """

__copyright__ = "Copyright (c) 2008-2015 Hive Solutions Lda."
""" The copyright for the module """

__license__ = "GNU General Public License (GPL), Version 3"
""" The license for the module """

import flask
import datetime

import quorum

SCOPE = (
    "foundation.store.list",
    "foundation.store.show",
    "foundation.employee.list",
    "foundation.employee.show",
    "foundation.supplier_company.list",
    "foundation.supplier_company.show",
    "customers.customer_person.list",
    "customers.customer_person.show",
    "documents.signed_document.list",
    "documents.signed_document.submit_at",
    "analytics.sale_snapshot.list"
)
""" The list of permissions to be used to create the
scope string for the oauth value """

app = quorum.load(
    name = __name__,
    logger = "omnia.debug",
    PERMANENT_SESSION_LIFETIME = datetime.timedelta(31)
)

@app.route("/", methods = ("GET",))
@app.route("/index", methods = ("GET",))
def index():
    return flask.render_template(
        "index.html.tpl",
        link = "home"
    )

@app.route("/base", methods = ("GET",))
def base():
    return flask.render_template(
        "base.html.tpl",
        link = "home"
    )

if __name__ == "__main__":
    quorum.run(server = "netius")
