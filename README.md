This repository is the repository where we create Docker images for various projects around unison land.

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
    
    
