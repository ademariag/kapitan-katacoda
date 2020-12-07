# 1: create the path
`cd kapitan-reference && mkdir -p inventory/targets`{{execute}}

# 2: create a file
<pre class="file" data-filename="inventory/targets/example" data-target="replace">
this is being saved
</pre>

# 3: open another file
`another_file.txt`{{open}}

> You should now see an empty file. Do not go back to the example file.

# 4: update file `example` without selecting it in the UI
<pre class="file" data-filename="inventory/targets/example" data-target="replace">
this is not actually being saved
</pre>

# 5. select the file `inventory/targets/example`{{open}} in the editor

# 6. Verify from the command line that the file has **not been updated**
`cat inventory/targets/example`{{execute}}