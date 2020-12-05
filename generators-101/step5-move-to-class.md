The example is getting a bit crowded.
Let's move the definition of this component into its own class, `inventory/classes/components/nginx.yml`{{open}}

<pre class="file" data-filename="inventory/classes/components/nginx.yml" data-target="replace">
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

The target file becomes now much cleaner, and we can add the class to make sure the `nginx` component is imported
<pre class="file" data-filename="inventory/targets/scenario.yml" data-target="replace">
classes:
  - common
  - components.nginx

parameters:
  # Override parameters
</pre>

Compile with `./kapitan compile -t scenario`{{execute}}
Notice with `git --no-pager diff compiled`{{execute}} that nothing has changed in the compiled folder.