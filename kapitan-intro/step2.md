# `kapitan compile`

We have pre-loaded some examples that will help you understand how ***kapitan*** works.

***kapitan*** expects to find several files and directories to work.
Let's start with the inventory, which by default is found in the `inventory` subfolder.
In the `inventory/targets` subdirectory, we specify ***"targets"*** which is the unit of deployment for ***kapitan***.

```
├── inventory
│   └── targets
│       ├── dev.yml
│       ├── staging.yml
│       └── prod.yml
```

Let's start by running `kapitan compile` and see what happens.

