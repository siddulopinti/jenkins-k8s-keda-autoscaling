# jenkins-k8s-keda-autoscaling
# Jenkins CI/CD on Kubernetes with KEDA-Based Auto-Scaling

This project demonstrates a real-world Jenkins CI/CD setup on Kubernetes with **auto-scaling Jenkins agents** using **KEDA** and **Prometheus**.

---

## 🚀 Project Highlights

- 🔧 Jenkins Master deployed on Kubernetes
- 🤖 Jenkins agents that auto-scale based on build queue size
- 📈 Prometheus scrapes Jenkins queue metrics
- 📊 KEDA (Kubernetes Event-Driven Autoscaling) triggers agent scaling
- 🧠 Smart cost-saving setup — zero idle agents!
- 🐳 Docker-based Jenkins Agent with custom configuration

🛠️ Setup Instructions
1. Clone the Repository
2. git clone <your-repo-link-here>
cd jenkins-k8s-keda-autoscaling

2. Build and Push the Jenkins Agent Image
Edit and run the script:
cd scripts/
./build-push-myname-agent.sh

3. Apply Kubernetes YAMLs
Make sure your cluster and kubectl are ready, then:
kubectl apply -f k8s/

4. Access Jenkins UI
kubectl get svc -n jenkins
Open http://<node-ip>:30080 in your browser.


📈 Why Auto-Scaling?
Traditional Jenkins setups run a fixed number of agents, leading to idle resources or build bottlenecks.

With Prometheus + KEDA, Jenkins agent pods spin up only when needed, based on actual queue length — reducing infrastructure costs and speeding up build times.

🧠 Technologies Used
Kubernetes
Jenkins
Docker
Prometheus
KEDA (Event-driven Autoscaler)
Bash scripting
