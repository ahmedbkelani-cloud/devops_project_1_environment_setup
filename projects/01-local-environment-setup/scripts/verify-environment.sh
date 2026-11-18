
#!/bin/bash

# DevOps Workstation Environment Verification
# Checks the availability of required DevOps tools.

echo "========================================"
echo " DEVOPS ENVIRONMENT VERIFICATION"
echo "========================================"

check_tool() {
    if command -v "$1" >/dev/null 2>&1; then
        echo "[PASS] $1 is installed"
    else
        echo "[FAIL] $1 is not installed"
    fi
}

TOOLS=(
    git
    docker
    kubectl
    minikube
    helm
    aws
    az
    node
    npm
    jq
    terraform
    ansible
)

for tool in "${TOOLS[@]}"; do
    check_tool "$tool"
done

echo "========================================"
echo " Kubernetes Cluster Status"
echo "========================================"

if command -v minikube >/dev/null 2>&1; then
    minikube status
fi

echo "========================================"
echo " Verification completed"
echo "========================================"
