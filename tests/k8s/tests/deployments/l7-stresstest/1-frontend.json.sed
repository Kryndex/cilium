{
    "kind":"ReplicationController",
    "apiVersion":"v1",
    "metadata":{
        "name":"frontend",
        "namespace": "qa",
        "labels":{
            "id":"client"
        }
    },
    "spec":{
        "replicas":1,
        "selector":{
            "id":"client"
        },
        "template":{
            "metadata":{
                "labels":{
                    "id":"client"
                }
            },
            "spec":{
                "containers":[{
                    "name":"misc",
                    "image":"borkmann/misc",
                    "command":["sleep"],
                    "args":["30000s"]
                }],
                "nodeSelector": {
                    "kubernetes.io/hostname": "$kube_node_selector"
                }
            }
        }
    }
}
