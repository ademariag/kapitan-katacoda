Let's get started by cloning the Kapitan Reference repository

`git clone https://github.com/kapicorp/kapitan-reference.git kapitan-reference && cd kapitan-reference`{{execute}}

Run `./kapitan compile`{{execute}} to make sure that everything is working ok

> **Note**: this might take some time while the docker image gets downloaded

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