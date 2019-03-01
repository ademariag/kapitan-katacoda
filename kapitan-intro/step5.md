Let's remove the `components.tuna` component from the `dev-sea` environment.

`sed -i '/components.tuna/d' inventory/targets/dev-sea.yml`{{execute}}
`kapitan compile`{{execute}}
`git status`{{execute}}
