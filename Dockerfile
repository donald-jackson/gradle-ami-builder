FROM gradle:4.5.1-jdk8

USER root

# Install jfrog client
RUN curl -fL https://getcli.jfrog.io | sh && \
    mv jfrog /usr/local/bin && \
    chmod a+x /usr/local/bin/jfrog

RUN wget https://releases.hashicorp.com/packer/1.2.1/packer_1.2.1_linux_amd64.zip && \
    unzip packer_1.2.1_linux_amd64.zip && \
    mv packer /usr/local/bin && \
    chmod a+x /usr/local/bin/packer

USER gradle
