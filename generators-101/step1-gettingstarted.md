 Clone the example repository
Let's get started by cloning the Kapitan Reference repository

`git clone https://github.com/kapicorp/kapitan-reference.git kapitan-reference && cd kapitan-reference`{{execute}}

Run `./kapitan --version`{{execute}} to check what version you are running. Check on https://kapitan.dev to see if a new version has been released and to find more documentation.

> **Note**: Kapitan in this example runs from a docker container. The first time you run kapitan it might take some time while the docker image gets downloaded.

You can now run `./kapitan compile`{{execute}} to compile all the targets in this repository.

As you can see, this reference repository comes already pre-installed with a huge amount of examples, which you can see being compiled by Kapitan

```
Compiled global (1.68s)
Compiled mysql (3.01s)
[cut]
Compiled sock-shop (5.41s)
Compiled prod-sockshop (4.00s)
Compiled dev-sockshop (3.52s)
```
> **Note** the list might change as we add more examples