This is we create the docker container images.
Each subdirectory is responsible for one (or more) container images

##BUILDING

    ❯ make help
    Usage:
    make build vault_version=1.7.0
    Makefile arguments:
    
    vault_version
    build_number -- as version when tagging images, defaults to DRONE_BUILD_NUMBER
    
    Makefile commands:
    build
    push
