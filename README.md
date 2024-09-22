# Podman Syncthing

First create directory and pull syncthing

```bash
sudo apt-get install podman
mkdir -p /home/mikael/Documents/Syncthing
chmod 777 -R /home/mikael/Documents/Syncthing
podman pull docker.io/syncthing/syncthing:latest
cd /home/mikael/Documents/
chmod +x syncthing.sh
```

then edit `syncthing.sh` and run it.

To access the Web-GUI, use SSH to create a tunnel:

```bash
ssh -L 18384:remote_host:8384 user@remote_host
```

Replace `remote_host` with the remote IP or DNS and replace `user@remote_host` with your actual username and the hostname or IP address of the remote machine.

Now, you can visit the Syncthing Web-GUI in your browser at http://localhost:18384.

