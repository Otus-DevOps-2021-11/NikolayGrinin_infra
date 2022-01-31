#!/bin/bash
cat <<EOANSIBLESCRIPT
{
    "_meta": {
        "hostvars": {
            "appserver": {
                "ansible_host": "84.201.135.24"
            },
            "dbserver": {
                "ansible_host": "84.201.133.130"
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
