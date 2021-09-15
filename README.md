# app1-code repository

This projects represents `app1` code producing Docker images tagged by the actual environment and timestamp in [Docker Hub Repository](https://hub.docker.com/repository/docker/jkosik/app1).
For demo we will imitate dev environment, producing images as, e.g. `app1:dev-1629484471`.

In production setup, it will follow this pattern:
- DEV branch => `app1:dev-1629484471`
- STAGE branch => `app1:stage-1629484472`
- MAIN (PROD) branch => `app1:1629484473`

These images are referenced in `app1` [Helm Chart](https://github.com/jkosik/app1) values files. Helm Chart repo will be followed by the ArgoCD and will be also packaged including `values.yaml` file to Artifact repository.
Basic model contains `values-dev.yaml`, `values-stage.yaml` and `values.yaml` within the Helm Chart repo each following own branch. Image tags can be updated by ArgoCD Image Updater.

**"External" Image tags within the Helm Chart repo should follow always Image produced by more stable external branch (STAGE or even MAIN). However there can be any amount of values files for any amount of target environments using any combination of own or external images. ArgoCD Image Updater decides which Image tags will be subject of automatic updates.**