# Create a new target
Let's create a new target `inventory/targets/scenario.yml`{{open}}, which is a way to tell Kapitan that we want to work on a new project.

The file will import the class `common` with the essential boilerplate needed to get you started
<pre class="file" data-filename="inventory/targets/scenario.yml" data-target="replace">
classes:
  - common
  - projects.localhost.kubernetes.katacoda

parameters:
</pre>

As you iterate through your changes, you will end up going through the following steps:

**compile** `./kapitan compile -t scenario`{{execute}}
> Notice that in the `compiled/` folder, a `scenario` subfolder appears with some files. 
> For instance, you can see that Kapitan has already automatically generated a namespace for this target: `compiled/scenario/pre-deploy/scenario-namespace.yml`{{open}}

**deploy** `./compiled/scenario/scripts/apply.sh`{{execute}}
> Kapitan can use the data it has to also compile scripts. As you can see, the `apply.sh` script works out of the box
> because it is able to fetch the cluster information from the class `projects.localhost.kubernetes.katacoda`
> No need to configure a context and less chances to make mistakes!

**check** `./compiled/scenario/scripts/kubectl.sh get pods`{{execute}}
> The same for the handy `kubectl.sh`. Notice how at the moment there are no running pods.

**git status** `git status`{{execute}}
> As Kapitan saves the compiled files in the compiled folder, you can use git to easily see how Kapitan modifies your targets as we go.

**git commit** `git add .; git commit -m 'Initial commit for scenario target'`{{execute}}

> **note** In production, the best practice is to use a *gitops* enabled workflow with a review process, and to delegate the `apply` step to a CD tool.

# Learn more
> Kapitan uses `targets` to group configurations for the same project. 
> 
> The `target` files live in `inventory/targets`. 
> 
> Each `target` will have a `classes` section and a `parameters` section.
> 
> A `target` can import multiple classes, which are yaml files in which you can define your configuration in a way that can be shared across targets. 
> 
> Once all classes have been imported, you can then override anything you want in the parameters section. Making modifications to the parameters section will only impact the current target. 


>Have a look at the `inventory/targets` folder to see other examples.