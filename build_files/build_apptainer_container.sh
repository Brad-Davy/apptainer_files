docker_image='mpi4py_container'
sudo apptainer build $docker_image.sif docker-daemon://$docker_image:latest
