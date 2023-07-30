# README
To get started:

1) Run `buildah bud .` in the root directory of this git repo, to build the image.
2) Run `podman run --privileged -v /home/USER/git/ansible/:/home/runner/ansible --workdir=/home/runner/ansible IMAGE_ID molecule converge` to start your [Molecule test](https://ansible.readthedocs.io/projects/molecule/getting-started/), where `USER` is your username and the path to your Ansible top level directory and `IMAGE_ID` is obtained after the image build is completed.

If more collections are needed, then add them to the collections variable in the Dockerfile.
