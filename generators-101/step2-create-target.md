# Create a new target
Let's create a new target `inventory/targets/scenario.yml`{{open}}, which is a way to tell Kapitan that we want to work on a new project.

The file will import the class `common` with the essential boilerplate needed to get you started
<pre class="file" data-filename="inventory/targets/scenario.yml" data-target="replace">
classes:
  - common

parameters:
  # Override parameters
</pre>

You can run `./kapitan compile -t scenario`{{execute}} to compile only the `scenario` target

Notice that in the `compiled/` folder, a `scenario` subfolder appears with some files. 

For instance, you can see that Kapitan has already automatically generated a namespace for this target: `compiled/scenario/pre-deploy/scenario-namespace.yml`{{open}}

# Add your changes to git
As Kapitan saves the compiled files in the compiled folder, you can use git to easily see how Kapitan modifies your targets as we go.

Add all the created file to a commit 
`git add .; git commit -m 'Initial commit for scenario target'`{{execute}}