post-k8s-readiness-spring-boot
==============================
This example shows how to set up a k8s readiness and liveness endpoint in a Spring Boot application.

The application is a Spring Boot application connected to a PostgreSQL database and to a Redis instance.

When the application run, you can call the liveness and readiness endpoints.

Run
---
For convenience, A `docker-compose.yaml` is provided that runs the _Spring Boot_ application, 
a _PostgreSQL_ instance and a _Redis_ instance.

Start up the containers:

    $ docker-compose up -d
    Creating network "bug-boot-actuator_default" with the default driver
    Creating bug-boot-actuator_pgsql_1 ... done
    Creating bug-boot-actuator_redis_1 ... done
    Creating bug-boot-actuator_boot_1  ... done

 
