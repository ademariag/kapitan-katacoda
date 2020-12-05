# Adding a port 
We can easily add a port by modifying the nginx component and adding a 'ports' section:

<pre class="file" data-filename="inventory/targets/scenario.yml" data-target="replace">
classes:
  - common

parameters:
  components:
    nginx:
      image: nginx:1.14.2
      replicas: 2
      ports:
        http:
          container_port: 80
</pre>

Once again, recompile your target with `./kapitan compile -t scenario`{{execute}} and check again `compiled/scenario/manifests/nginx-bundle.yml`{{open}}.

`git --no-pager diff`{{execute}} will also give you a quick overview
`git commit -a -m 'Added port to deployment nginx'`{{execute}}

# Generating a Service resource 
Let's go further. To expose the `nginx` deployment, we need a Kubernetes Service.
Let's create one by adding the "service" configuration

<pre class="file" data-filename="inventory/targets/scenario.yml" data-target="replace">
classes:
  - common

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

Compile your target with `./kapitan compile -t scenario`{{execute}} and check again `compiled/scenario/manifests/nginx-bundle.yml`{{open}}.

On the command line, you can run:
`git --no-pager diff`{{execute}}

This time you will find that the file also contains a Service resource created for the deployment.

`git commit -a -m 'Added service to deployment nginx'`{{execute}}