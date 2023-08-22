# SimpleShare - an Nginx Shared Content Server
This Docker image provides an Nginx server configured to serve content from a shared directory. It's designed to dynamically reflect changes made to the shared directory without restarting the container. 

## Features
* Dynamic Content Serving: Any changes made to the shared directory on the host are immediately reflected in the browser.
* Health Check: A simple HTTP check monitors the container's health status.

## Accessing the Content
Once the container is running, navigate to http://localhost:80 in your browser. You should see the contents of the shared directory. If the directory was empty or newly created, it should now contain the example files from the image.

# Main usage
This is an excellent server for generic files such as images on internal networks. It's especially suited to be used with tools like [CargoDesk](https://github.com/f-steff/CargoDesk).

Please see the docker-compose.yml file for specific usage.

## Availability
Docker Hub: Pre-built image available at the [SimpleShare Docker Hub Repository](https://hub.docker.com/r/fsteff/SimpleShare). 
GitHub: Source code is available at the [SimpleShare GitHub Repository](https://github.com/f-steff/SimpleShare).


## Contributing
If you have suggestions or improvements, please contact me.
