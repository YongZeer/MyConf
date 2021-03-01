docker run -d \
    --rm \
    --name mypwn \
    -v $(pwd)/mypwn:/ctf/work \
    -p 23946:23946 \
    --cap-add=SYS_PTRACE \
    mypwn
echo "docker exec -it pwn /bin/bash"
echo ""
echo "put the file on ./mypwn"
echo "WORKDIR: cd /ctf/work"
echo "stop & delete container: docker stop mypwn"
echo ""

docker exec -it mypwn /bin/bash


# https://hub.docker.com/r/skysider/pwndocker
# docker save -o pwndocker.tar skysider/pwndocker:latest
# docker load -i pwndocker.tar
