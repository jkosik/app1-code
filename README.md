# app1-code

This projects represents `app1` code producing Docker images tagged by the actual environment and timestamp in [Docker Hub Repository](https://hub.docker.com/repository/docker/jkosik/app1).
For demo we will imitate dev environment, producing images as, e.g. `app1:dev-1629484471`.

In production setup, it will follow this pattern:
- DEV branch => `app1:dev-1629484471`
- STAGE branch => `app1:stage-1629484472`
- PROD branch => `app1:prod-1629484473`

These images will be referenced in `app1` [Helm Chart](https://github.com/jkosik/app1) templates.
To use differet image in different target environments, use dedicated Helm values file for DEV,STAGE,PROD images, i.e. `values-[dev,stage,prod].yaml`.
ArgoCD ApplicationSet will follow `main` Git branch of the Helm Chart repository and will use different Helm values file per target Kubernetes cluster

To avoid need to overwrite Helm Chart repository when new Docker image tag is created, we use `argocd-image-updater`.
