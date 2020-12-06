
# create a file
<pre class="file" data-filename="example" data-target="replace">
this works
</pre>

# open another file
`another_file.txt`{{open}}

# update file `example` without selecting it in the UI
<pre class="file" data-filename="example" data-target="replace">
this does not work
</pre>

# Check on the command line that the file has not been updated
`cat example`{{execute}}