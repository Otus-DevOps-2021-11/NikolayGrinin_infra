#!/bin/bash
cat <<EOANSIBLESCRIPT
{
    "_meta": {
        "hostvars": {
            "appserver": {
                "ansible_host": "62.84.118.243"
            },
            "dbserver": {
                "ansible_host": "84.201.156.165"
            }
        }
    },
    "all": {
        "children": [
            "app",
            "db",
            "ungrouped"
        ]
    },
    "app": {
        "hosts": [
            "appserver"
        ]
    },
    "db": {
        "hosts": [
            "dbserver"
        ]
    }
}
EOANSIBLESCRIPT
