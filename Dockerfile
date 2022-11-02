FROM drydock-prod.workiva.net/workiva/dart_build_image:3 as build

# Produce artifacts
ARG BUILD_ARTIFACTS_CDN=/build/cdn_assets.tar.gz

