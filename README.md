# Docker image tagged with timestamp and source branch
Used for CICD and ArgoCD Image Updater testing.

Docker images are tagged with the source branch and timestamp and pushed to [Docker Hub Repository](https://hub.docker.com/repository/docker/jkosik/app1).
For demo we will imitate dev environment, producing images as, e.g. `app1:dev-1629484471`.

In production setup, it will follow this pattern:
- DEV branch => `app1:dev-1629484471`
- STAGE branch => `app1:stage-1629484472`
- MAIN (PROD) branch => `app1:1629484473`

