We now want to ask Kapitan to generate for us a new deployment. 

For instance, from the example at https://kubernetes.io/docs/tasks/run-application/run-stateless-application-deployment/, let's try to generate an nginx deployment.

> **Note** At first, we will "inline" the configuration directly in the target for simplicity. Soon we will see how to create reusable classes.

<pre class="file" data-filename="inventory/targets/scenario.yml" data-target="replace">
classes:
  - common

parameters:
  components:
    nginx:
      image: nginx:1.14.2
      replicas: 2
</pre>

run again `./kapitan compile -t scenario`{{execute}} and notice that the `compiled/scenario/manifests/nginx-bundle.yml`{{open}} has appeared.
As you can see, the deployment file is already very similar to the example we are following, with some extras.

One thing missing is the container port definition. Let's see how we can add it in the next step.
