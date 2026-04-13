#  PR-Driven Terraform Deployment using Atlantis

## 📌 Project Overview

This project demonstrates a complete **DevOps workflow** where infrastructure is provisioned using **Terraform** and automated via **Atlantis** using GitHub Pull Requests.

---

## 🛠️ Tech Stack

* Terraform
* Atlantis
* AWS (EC2, Security Groups)
* GitHub
* Docker

---

## 🏗️ Architecture

```
Developer → GitHub PR → Atlantis → Terraform → AWS
```

---

## 📂 Project Structure

```
.
├── atlantis.yaml
├── environments/
│   ├── dev/
│   └── staging/
├── modules/
│   └── ec2/
└── screenshots/
```

---

## ⚙️ Workflow

### 🔹 Step 1: Terraform Plan

Atlantis automatically runs plan on PR creation.

![ss1](https://github.com/user-attachments/assets/7d8865bc-52e8-41e1-96db-b4093e3b4114)



### 🔹 Step 2: Apply Trigger

Deployment is triggered via PR comment.

![ss2](https://github.com/user-attachments/assets/2aaa9327-ea06-4b02-8220-b8cc14fa3a20)


### 🔹 Step 3: Apply Success

Terraform provisions infrastructure.

![ss3](https://github.com/user-attachments/assets/438dc4b0-6900-4830-9941-b64e68261f10)


### 🔹 Step 4: AWS Verification

Infrastructure is successfully created in AWS.

![ss4](https://github.com/user-attachments/assets/944b25c8-d6c5-4a46-ac77-52a19faf1cea)


## 💥 Challenges

* Handling merge conflicts in Terraform
* Fixing module argument errors
* Debugging Atlantis configuration
* Managing PR-based workflows

---

## 📚 Learnings

* Real-world DevOps workflow
* Infrastructure as Code (IaC)
* Automation using Atlantis
* AWS resource provisioning

---

## 👩‍💻 Author

**Varshini Reddy**
