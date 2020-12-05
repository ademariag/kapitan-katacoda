A working `nginx` configuration requires more than just a Deployment and a Service, we need to add configuration files!

Let's add a config_maps file to the nginx component.

<pre class="file" data-filename="inventory/classes/components/nginx.yml" data-target="append">
      # Define a config maps
      config_maps:
        config:
          mount: /etc/nginx/conf.d
          data:
            nginx.conf:
              value: |
                server {
                   listen       80;
                   server_name  localhost;
                   location / {
                       proxy_pass  http://localhost:8080/;
                   }
                   error_page   500 502 503 504  /50x.html;
                   location = /50x.html {
                       root   /usr/share/nginx/html;
                   }
                }
</pre>

