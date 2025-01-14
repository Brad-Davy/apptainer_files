# Containerized Scientific Computing Environment

This repository contains the necessary files to build and run containerized environments for scientific computing using Apptainer (formerly Singularity) and Docker. The containers include environments for ESMF, MPI4PY with Python, and OpenFOAM.

## Repository Structure

### `build_files/`

- `build_apptainer_container.sh`: Script to build Apptainer containers from Docker images.
- `Dockerfile`: Dockerfile to create a Python environment with MPI4PY and necessary dependencies.

### `containers/`

- `esmf/`: Contains files related to the ESMF container.
  - `build_apptainer_container.sh`: Script to build the ESMF Apptainer container.
  - `esmf.def`: Definition file for the ESMF container.
  - `esmf.sif`: Built ESMF Apptainer container file.

- `mpi4py_python/`: Contains files related to the MPI4PY Python container.
  - `mpi4py_apptainer.sif`: Built MPI4PY Apptainer container file.
  - `mpi4py_container.def`: Definition file for the MPI4PY container.
  - `requirements.txt`: Python dependencies for the MPI4PY container.
  - `run.sh`: Script to run the MPI4PY container.
  - `test.py`: Test script for the MPI4PY container.

- `openfoam/`: Contains files related to the OpenFOAM container.
  - `openfoam.def`: Definition file for the OpenFOAM container.
  - `openfoam.sif`: Built OpenFOAM Apptainer container file.

### `def_files/`

- `esmf.def`: Definition file for the ESMF container.
- `mpi4py_container.def`: Definition file for the MPI4PY container.
- `openfoam.def`: Definition file for the OpenFOAM container.

## Building Containers

### Building Apptainer Containers

To build the Apptainer containers, use the `build_apptainer_container.sh` script located in the `build_files/` directory. For example, to build the MPI4PY container:

```sh
cd build_files
./build_apptainer_container.sh