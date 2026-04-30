# 🚀 Terraform AKS Deployment Project

## 📌 Project Overview

This project demonstrates how to provision and deploy a complete Azure Kubernetes Service (AKS) environment using Terraform with a modular architecture. It includes infrastructure setup, networking configuration, AKS deployment, and application deployment on Kubernetes.

---

## 🛠️ Tools & Technologies

* Terraform (Infrastructure as Code)
* Microsoft Azure (Cloud Platform)
* Azure Kubernetes Service (AKS)
* Kubernetes (kubectl)
* Azure CLI
* Git & GitHub

---

## 🏗️ Architecture

The infrastructure is designed using a modular Terraform structure:

* Resource Group (RG)
* Virtual Network (VNet)
* Subnet
* AKS Cluster

Flow:
RG → VNet → Subnet → AKS → Kubernetes Deployment (Nginx)

---

## 📁 Project Structure

```
bootcamp2/
│
├── modules/
│   ├── rg/
│   ├── vnet/
│   ├── aks/
│
├── environments/
│   ├── dev/
│   └── prod/
│
└── .gitignore
```

---

## ⚙️ Implementation Steps

### 1. Initialize Terraform

```
terraform init
```

### 2. Validate Configuration

```
terraform validate
```

### 3. Plan Infrastructure

```
terraform plan -var-file="dev.tfvars"
```

### 4. Apply Infrastructure

```
terraform apply -var-file="dev.tfvars"
```

---

## ☁️ AKS Cluster Deployment

* Created AKS cluster using Terraform
* Configured node pool with VM size
* Integrated AKS with custom VNet and Subnet
* Used System Assigned Identity

---

## 🔧 Challenges & Solutions

### ❌ VM Size Restriction

* Issue: Selected VM size was not supported in the region
* Solution: Changed to a supported VM size (`Standard_D2s_v3`)

### ❌ CIDR Overlap Error

* Issue: Service CIDR overlapped with subnet CIDR
* Solution: Defined separate service CIDR (`10.1.0.0/16`)

---

## 🔗 Cluster Access

```
az aks get-credentials --resource-group dev-rg-sejal --name dev-aks-sejal
kubectl get nodes
```

---

## 🚀 Application Deployment

### Deploy Nginx

```
kubectl create deployment nginx --image=nginx
```

### Expose Service

```
kubectl expose deployment nginx --type=LoadBalancer --port=80
```

### Get Public IP

```
kubectl get svc
```

---

## 🌐 Output

* Successfully deployed Nginx application
* Accessed via public IP through browser
* Verified working Kubernetes cluster

---

## 📸 Screenshots

* Terraform Apply Success
* Azure Portal (AKS + Resources)
* Kubernetes Nodes Output
* Nginx Web Page


---

## 💡 Key Learnings

* Modular Terraform architecture
* Azure networking (VNet, Subnet)
* AKS deployment and configuration
* Troubleshooting real-world cloud issues
* Kubernetes deployment and exposure

---
terraform destroy -var-file="dev.tfvars"
```

---

## 👩‍💻 Author

Sejal Sakhala
# terraform-aks-project
