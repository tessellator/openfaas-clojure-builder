# OpenFaaS Clojure Builder

This project contains the source for creating the Docker image used in the build step of the [OpenFaaS Clojure Template](https://github.com/tessellator/openfaas-clojure-template).

The purpose of this image is to reduce the number of dependencies that have to be fetched every time a Clojure function is built. The image contains the Clojure tooling as well as an `.m2` cache that contains many common dependencies. Note that the inclusion of these various libraries in the cache does not affect the output size of the final template output; this image is only used for building.


## License

Copyright © 2019 Thomas C. Taylor and contributors.

Distributed under the MIT License, the same as OpenFaaS.