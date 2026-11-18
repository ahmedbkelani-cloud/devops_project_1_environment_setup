

# DevOps Workstation Environment Setup

## 1. Project Overview

This project documents the setup and verification of a local DevOps workstation using Ubuntu 24.04.5 LTS running through WSL2 on Windows.

The objective was to prepare a development environment with the essential tools required for version control, containerization, Kubernetes, cloud interaction, scripting, and infrastructure automation.

## 2. Host Environment

| Component | Configuration |
|---|---|
| Host operating system | Windows |
| Linux environment | Ubuntu 24.04.5 LTS |
| Virtualization | WSL2 |
| Linux kernel | 6.18.58.1-microsoft-standard-WSL2 |
| Architecture | x86_64 |
| Physical RAM | Approximately 8 GB |
| Available Windows disk space at setup | Approximately 74 GB |
| Code editor | Visual Studio Code |

## 3. Tools Installed

| Category | Tool | Verified version |
|---|---|---|
| Version control | Git | 2.43.0 |
| Containerization | Docker | 29.9.3 |
| Container orchestration | Docker Compose | v5.7.0 |
| Kubernetes | kubectl | v1.37.2 |
| Kubernetes | Minikube | v1.39.0 |
| Kubernetes package manager | Helm | v4.3.0 |
| Cloud CLI | AWS CLI | 2.40.2 |
| Cloud CLI | Azure CLI | 2.93.0 |
| JavaScript runtime | Node.js | v26.13.1 |
| Package manager | npm | 11.20.0 |
| Command-line utility | jq | 1.7 |
| Infrastructure as Code | Terraform | 1.17.2 |
| Configuration management | Ansible | 2.16.3 |

## 4. Installation and Configuration

The workstation was prepared using Ubuntu on WSL2.

The setup included:

- Installing and configuring Git.
- Connecting the local project directory to a GitHub repository.
- Integrating Visual Studio Code with the Ubuntu environment.
- Installing Docker Desktop and enabling its WSL2 integration.
- Installing Minikube, kubectl, and Helm for local Kubernetes development.
- Installing AWS CLI and Azure CLI.
- Installing Node.js, npm, and jq.
- Installing Terraform and Ansible.

Docker was tested by running the `hello-world` container successfully.

Minikube was started using the Docker driver with 2 CPUs and 2048 MB of memory.

## 5. Verification and Testing

The installed tools were checked using their version commands.

The Docker installation was tested with:

```bash
docker run hello-world
```

The Kubernetes cluster was checked using:

```bash
minikube status
kubectl get nodes
kubectl get pods -A
```

The Minikube node was reported as `Ready`, and the control plane, host, kubelet, and API server were running during verification.

**Kubernetes health note:** During the initial cluster inspection, CoreDNS and the storage-provisioner pods were not fully healthy. This was recorded rather than reported as a fully healthy cluster.

### Automated environment verification

A Bash script was created at:

```text
scripts/verify-environment.sh
```

The script checks whether the required DevOps tools are available on the system and displays the Minikube cluster status.

To make the script executable:

```bash
chmod +x scripts/verify-environment.sh
```

To run the script:

```bash
./scripts/verify-environment.sh
```

The verification run detected all 12 tools:

- Git
- Docker
- kubectl
- Minikube
- Helm
- AWS CLI
- Azure CLI
- Node.js
- npm
- jq
- Terraform
- Ansible

Minikube also reported its host, kubelet, API server, and kubeconfig as running or configured.

## 6. Repository Structure

```text
devops_project/
├── README.md
└── projects/
    └── 01-local-environment-setup/
        ├── README.md
        ├── config/
        │   └── bashrc
        ├── reports/
        │   └── tooling-verification.txt
        ├── screenshots/
        │   └── kubernetes-cluster-proof.png
        └── scripts/
            └── verify-environment.sh
```

## 7. Challenges and Troubleshooting

Some of the practical setup tasks involved configuring WSL2 integration, ensuring Docker Desktop was accessible from Ubuntu, and getting the local Kubernetes cluster running.

The tools were verified from the Ubuntu terminal to confirm that they were accessible within the actual development environment.

## 8. Submission Evidence

The project includes:

- A tooling verification report.
- A screenshot showing the Minikube status and Kubernetes node.
- A copy of the Bash configuration file.
- An executable environment verification script.
- This project documentation.

## 9. Conclusion

The workstation has been configured with the core tools needed to begin practical DevOps projects involving Linux, Git, containers, Kubernetes, cloud CLIs, and infrastructure automation.

This environment will serve as the foundation for subsequent projects in this repository.

