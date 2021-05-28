This repository is the repository where we create Docker images for various projects around unison land.

Many people visiting this repository will likely be here because it is the repository that creates the Docker Image which drives [Unison Share](https://share.unison-lang.org) and therefore controls what unison software is displayed by that website. That functionality is controlled by [this file](https://github.com/unisonweb/shipwright/blob/trunk/files/initialize-codebase.sh). You can feel free to propose updates to this file using [this link](https://github.com/unisonweb/shipwright/edit/trunk/files/initialize-codebase.sh)

## Building 

This project is built automatically on [drone](https://drone.unison-lang.org/unisonweb/shipwright) but can be built locally using the makefile directly:

The makefile expects the DRONE_BUILD_NUMBER environment variable to be used as the version number for tagging the Docker images it builds.


    ❯ make help
    Usage:
    make build vault_version=1.7.0
    Makefile arguments:
    
    vault_version
    build_number -- as version when tagging images, defaults to DRONE_BUILD_NUMBER
    
    Makefile commands:
    build
    push

