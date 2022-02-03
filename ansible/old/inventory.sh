#!/bin/bash
cat <<EOANSIBLESCRIPT
{
    "_meta": {
        "hostvars": {
            "appserver": {
                "ansible_host": "62.84.118.111"
            },
            "dbserver": {
                "ansible_host": "62.84.113.93"
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
