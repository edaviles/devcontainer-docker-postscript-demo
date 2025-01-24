FROM mcr.microsoft.com/devcontainers/base:ubuntu AS build

# Create vscode user
#ARG USERNAME=vscode
#RUN useradd -m $USERNAME

RUN mkdir /workspace
WORKDIR /workspace
COPY . /workspace

# Install Azure CLI and application insights and azure devops extension
RUN curl -sL https://aka.ms/InstallAzureCLIDeb | bash
#RUN az extension add --name azure-devops

# Update and install Terraform
#RUN wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg

#RUN echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/hashicorp.list
#RUN apt update
#RUN apt install terraform -y

# Update and install Kubectl
RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
RUN install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

# Set the user to USERNAME
USER $USERNAME
