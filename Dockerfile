FROM quay.io/ansible/creator-ee

RUN dnf5 install acl openssh-server python3 python3-netaddr python3-dns sudo --assumeyes && dnf5 clean all
RUN collections="community.general ansible.netcommon"; for collection in $collections; do ansible-galaxy collection install "$collection" -p /usr/share/ansible/collections/; done
