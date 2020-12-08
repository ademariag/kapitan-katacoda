We now want to ask Kapitan to generate for us a new deployment. 

For instance, from the example at [run-stateless-application-deployment](https://kubernetes.io/docs/tasks/run-application/run-stateless-application-deployment/), let's try to generate an `nginx` Deployment.

<pre class="file" data-filename="inventory/targets/scenario.yml" data-target="replace">
classes:
  - common
  - projects.localhost.kubernetes.katacoda

parameters:
  components:
    nginx:
      image: nginx:1.14.2
      replicas: 2
</pre>

You will get used to run always these commands:

**compile** `./kapitan compile -t scenario`{{execute}}
> check again `compiled/scenario/manifests/nginx-bundle.yml`{{open}}.
> As you can see, the deployment file is already very similar to the example we are following, with some extras.
> One thing missing is the container port definition. Next we see how we can add it in the next step.

**deploy** `./compiled/scenario/scripts/apply.sh`{{execute}}

See the pods running using `./compiled/scenario/scripts/kubectl.sh get pods`{{execute}}

# Check git
Before you continue, check with `git` how easy is to track what Kapitan does to your files

`git status`{{execute}}

Add the new files to git to make the next steps easier to evaluate.

`git add .; git commit -m 'Added nginx deployment'`{{execute}}

# Learn more

> In this step, we have "inlined" the configuration directly in the target file for simplicity. This is suitable for experimenting with Kapitan, but it doesn't take advantage of the ability to re-use components. 
> 
> Under the hood, Kapitan uses [reclass](https://github.com/kapicorp/reclass) to create the `inventory`, which is the result of combining `classes` inside `targets`. Adding `classes` to a target allows you to alter its inventory, and drive Kapitan to react to the changes.
> 
>Soon we will see how to create reusable classes. Future trainings will explain more about the inventory.
