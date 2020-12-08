# Adding a port 
We can easily add a port by modifying the nginx component and adding a 'ports' section:

<pre class="file" data-filename="inventory/targets/scenario.yml" data-target="replace">
classes:
  - common
  - projects.localhost.kubernetes.katacoda

parameters:
  components:
    nginx:
      image: nginx:1.14.2
      replicas: 2
      ports:
        http:
          container_port: 80
</pre>

Once again:

**compile** `./kapitan compile -t scenario`{{execute}}
> check again `compiled/scenario/manifests/nginx-bundle.yml`{{open}}.

**deploy** `./compiled/scenario/scripts/apply.sh`{{execute}}

See the pods running using `./compiled/scenario/scripts/kubectl.sh get pods`{{execute}}

`git --no-pager diff compiled`{{execute}} will also give you a quick overview of what changed in the compiled directory.
`git commit -a -m 'Added port to deployment nginx'`{{execute}}

# Generating a Service resource 
Let's go further. To expose the `nginx` deployment, we need a Kubernetes Service.
Let's create one by adding the "service" configuration

<pre class="file" data-filename="inventory/targets/scenario.yml" data-target="replace">
classes:
  - common
  - projects.localhost.kubernetes.katacoda

parameters:
  components:
    nginx:
      image: nginx:1.14.2
      replicas: 2
      service:
        type: LoadBalancer   # or ClusterIP or #NodePort
      ports:
        http:
          container_port: 80
          service_port: 80   # Without this the port would not be exposed
</pre>

Same again:

**compile** `./kapitan compile -t scenario`{{execute}}
> check again `compiled/scenario/manifests/nginx-bundle.yml`{{open}}.

**deploy** `./compiled/scenario/scripts/apply.sh`{{execute}}

See the service running using `./compiled/scenario/scripts/kubectl.sh get services`{{execute}}

On the command line, you can run:
`git --no-pager diff compiled`{{execute}}

This time you will find that the file also contains a Service resource created for the deployment.

`git commit -a -m 'Added service to deployment nginx'`{{execute}}

# Learn more
> A generator reacts to the configuration of a specific inventory subpath. 
> 
> For instance, Kubernetes manifests react to "components" being added under the `components` section.
> ```
> parameters:
>   components:
>     [component name]:
>       [component configuration]
>```
> **KEY POINT**: It does not matter that these configurations are in the same file. They can be scattered in multiple classes, as long as the final rendered inventory matches the desired configuration.
> 
> Using the power of the `inventory` you can for instance have an `nginx` class to define the basic component, and a `production` class to add changes to nginx to set production only settings.