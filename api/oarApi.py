#!/usr/bin/env python3
import connexion
import yaml

CATALOGS = yaml.full_load(open(r'./examples/Catalog/Catalog.yaml'))


def getAllCatalogs():
    print(CATALOGS)
    return CATALOGS


if __name__ == '__main__':
    options = {"swagger_ui": True, "additionalProperties": True}
    app = connexion.FlaskApp(__name__, port=8080, specification_dir='./_build')
    app.add_api('oarApi.yaml', arguments={
                'title': 'OpenAccess On Containers Mock API Server'}, options=options)
    app.run()
