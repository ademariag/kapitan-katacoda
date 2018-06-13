# `kapitan compile`

We have pre-loaded some examples that will help you understand how ***kapitan*** works.

***kapitan*** expects a directory structure that looks like this:

```
├── inventory
│   ├── classes
│   │   ├── cluster
│   │   │   ├── cluster1.yml
│   │   │   └── cluster2.yml
│   │   ├── component
│   │   │   ├── elasticsearch.yml
│   │   │   ├── nginx.yml
│   │   │   └── zookeeper.yml
│   │   └── environment
│   │       ├── dev.yml
│   │       └── prod.yml
│   └── targets
│       ├── dev-cluster1-elasticsearch.yml
│       ├── prod-cluster1-elasticsearch.yml
│       └── prod-cluster2-frontend.yml

```


Let's start by running `kapitan compile` and see what happens.

