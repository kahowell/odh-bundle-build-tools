FROM registry.access.redhat.com/ubi9/go-toolset:1.25

USER root
RUN go install github.com/mikefarah/yq/v4@latest
RUN curl -L https://dl.k8s.io/release/v1.34.0/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl
RUN chmod +x /usr/local/bin/kubectl
ENV PATH "$PATH:/opt/app-root/src/go/bin"
CMD /bin/bash
