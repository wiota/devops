# Wiota Co Dev Environment

## First time setup:

1. Install the Docker Toolbox: <https://docs.docker.com/engine/installation/mac/>

2. Install Gas Mask: <https://github.com/2ndalpha/gasmask>

3. Set up a Gas Mask config for `/etc/hosts` with entries such as:

    ```
    192.168.99.100    www.example.com
    192.168.99.100    static.example.com
    192.168.99.100    lime.local
    192.168.99.100    hello.local
    192.168.99.100    goodbye.local
    ```

    You will need a `example.com` for every Facade host.

4. Clone this repo:

   ```
   git clone git@github.com:wiota/devops.git
   ```

## To start:

1. Switch to the Gas Mask configuration.

2. Ensure that the default `docker-machine` is running:

    ```
    docker-machine start default
    ```

    (This needs done every time the host machine is restarted)

3. Ensure that the proper environment vars are set:

    ```
    eval "$(docker-machine env default)"
    ```

    (This needs done once per terminal session)

4. Put yourself into the devops directory:

   ```
   cd devops
   ```

4. Run `make serve`

5. Lime is available at <http://lime.local>

_Note_: This assumes that our other Git repos are at `../lime`, `../facade`, etc. To develop, make changes in these repos directly. Docker will automatically reload on changes.
