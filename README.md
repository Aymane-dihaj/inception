## What is Docker:

- Docker is a tool that can **package an application** and its dependencies into an isolated **container**.
    
    ### Types of problems docker fixes
    
    - Imagine spending 4 hours debugging some software that is not yours and realizing that you won’t be able to run it!
        - A dependency is not compatible with your software version
        - you already have the addiction but in a different version
        - your dependency does not exist on your OS
        - Your dependency crashes at lunch…
    

## Why we use Docker:

- We all know that there are the VMs (virtual machines) that can solve that problem but The greater advantage of using **Docker** is the possibility of modeling each container in the form of an image that can be stored locally.
    
    ### What is a Container:
    
    - Simply a container is an isolated environment for running an application
    
    ### What is a Virtual Machine
    
    - An abstraction of a machine (physical hardware)
    

> **Imagine that you want to host a website, for example you would need to install NGINX, install it on your computer? You haven’t learned your lesson? What if you don’t have the right OS, or the wrong dependencies?**
> 

## What is Docker Image:

- A **docker image** is like a **blueprint** or **snapshot** of a virtual machine that contains everything you need to run a software application, it includes the application code, the **runtime environment**, **libraries**, **dependencies**, and **configuration files**. You can think of it as a packaged-up version of your application that can be easily shared and run on any system that has Docker installed.

## What is Dockerfile:

- A **Dockerfile** is a text document that contains all the commands the user could call on the command line to make an image
    
    ### These are some commands you can use in the Dockerfile:
    
    - **FROM:**
        - Used to specify the **base image** upon which the new image will be built for ex : FROM: debian:buster ⇒ this command tells docker to use **Debian** as a base image to build the new Docker image. Docker will **pull the official image of Debian Buster from the DockerHub** and use it as the starting point for building your new Docker image.
    - **RUN:**
        - Used to **execute commands** within the docker container during the image build process, it’s used to **install dependencies**, **run scripts**, or perform any other actions to prepare the environment inside the container.
    
    - **COPY:**
        - Used to Copy files from the host machine to the container ex: COPY  ./index.html ./var/www/index

## Docker under the hood:

- *cgroups && namespaces*:
    - The backbone of the Docker technology are **cgroups** (**short for control groups**) and kernel **namespaces,** both are features already provided in the Linux kernel.
        - **cgroups:** the Linux operating system can easily manage and monitor resource allocation for a given process and set resource limits, like CPU, memory, and network limits. the kernel can now control the maximum amount of resources a process gets. This lets the Docker engine only give out 50% of the computer’s memory, processors, etc.
        - **namespaces:** Namespaces help isolate process groups from each other. There are six default namespaces in Linux: `mnt`, `IPC`, `net`, `usr`, `pid`, and `uts` . Each container will have its namespace and processes running inside that namespace, and will not have access to anything outside its namespace.

## Docker network isolation:

- Docker containers also have network isolation via `libnetwork` , allowing for separate virtual interfaces and IP addressing between containers

## What is an SSL Certificate:

- Also known as a **Secure Socket Layer Certificate,** it’s a digital certificate that enables secure communication between the web browser and the web server.

## What is TLS:

- Also known as **Transport Layer Security,** it’s a protocol that provides secure communication over a computer network.

## Difference between SSL and TLS:

- SSL protocol is a bit dated as it was made back in 1995 and replaced with TLS. actually, SSL refers to TLS or some other form of security protocol.

## How SSL works:

- First The browser and the server engage what’s called a handshake to establish a secure connection.

## SSL under the hood:

- **Handshake:**
    - The user browser sends a **Hello message** to the server, this message includes meta-information about the browser and the operating system and the type of **encryption** that the user can support. Depending on that message the server chooses which type of encryption they will use, by default the server will choose the most powerful and latest type the browser can support. once this is done the server responds with a Hello message, this message includes information about the server and the selected encryption type, the server also sends its **digital SSL certificate**, which contains the domain name and the certificate **public key** that will be used for encryption, Then the browser checks the certificate if it's valid or not, if the certificate is valid then the browser generates a **random session key** and encrypt it with the server SSL **public key** and send it to the server then the server decrypts it using its **private key** if it matched the **public key** that already generated by the browser before, the server sends a **Finish message** to the browser.

## Some Docker Commands:

- **docker build**: used to build a new image or update one
- **docker run**: used to start a container
- **docker ps**: display the running containers
- **docker stop**: stop a specific container
- **docker rm**: used to delete a specific container
- **docker system prune**: Delete all the containers
- **docker logs**: show the logs of a specific container

## What is Docker-Compose:

- Docker compose is a tool that allows you to define and manage **multi-container** applications using a simple **YAML** file.
- 💡: Docker compose makes it possible to manage applications that use several containers and to communicate between them.

## What is Docker volume:

- A **Docker volume** is like a virtual USB drive or a **shared folder** that allows containers to store and access data independently of the container. it’s a way for containers to persist and **share data** with other containers or with the host machine. You can think of it as a **detachable storage space** that can be attached to one or more containers, enabling data to be **stored** persistently even if the container is **stopped** or **removed**.

## MariaDB:

- MariaDB is a **database management system** (**DBSM**). the DBSM is an **interface** between the user and the database, allowing users to **create**, **read**, **update**, and **delete** data in the database.

### How MariaDB works:

- Data Management is based on a table model, All data processed on MariaDB is stored in tables that can be linked to each other via keys.
    
    ![anatomy-of-a-sql-table-F.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/b3aca17b-0fb1-49bf-a34c-df03e0d0743c/6330ebc6-3afc-42ec-9980-b77f841a57da/anatomy-of-a-sql-table-F.png)
    

## Wordpress:

- Wordpress is a **content management system (CMS)** based on PHP and MySQL. it is an open-source platform that is widely used for building websites, blogs, and applications. with Wordpress, users can easily create and mange their own websites without the need for advanced thechnical skills. it is known for its simplicity and flexibility, making it a popular choice for both beginners and experienced developers.

## FastCGI:

- FastCGI (Fast common gatewaty interface) is a protocol that allows web servers  to communicate with web applications, such as PHP scripts. it is designed to allow web servers to execute scripts in a more efficient way thean traditiohnal CGI (Common gateway interface) protocols, which involve starting a new process to execute each script.

## PHP-FPM:

- PHP-FPM (FastCGI process Manager) is an implementation of the fastCGI protocol specifically designed for use with php. it works by starting a pool of worker process that are responsible for executing php scripts.

## Sources:

  [`https://www.linkedin.com/pulse/explains-docker-rida-rhnizar-djybe?trk=public_post_feed-article-content`](https://www.linkedin.com/pulse/explains-docker-rida-rhnizar-djybe?trk=public_post_feed-article-content)

[`https://github.com/waltergcc/42-inception`](https://github.com/waltergcc/42-inception)

[`https://github.com/iimyzf/Inception`](https://github.com/iimyzf/Inception)

[`https://github.com/jotavare/42-resources#05-inception`](https://github.com/jotavare/42-resources#05-inception)

[`https://github.com/codesshaman/inception`](https://github.com/codesshaman/inception)

[`https://www.nginx.com/blog/what-are-namespaces-cgroups-how-do-they-work/`](https://www.nginx.com/blog/what-are-namespaces-cgroups-how-do-they-work/)

[`https://github.com/Forstman1/inception-42`](https://github.com/Forstman1/inception-42)

[`https://medium.com/swlh/wordpress-deployment-with-nginx-php-fpm-and-mariadb-using-docker-compose-55f59e5c1a`](https://medium.com/swlh/wordpress-deployment-with-nginx-php-fpm-and-mariadb-using-docker-compose-55f59e5c1a)
