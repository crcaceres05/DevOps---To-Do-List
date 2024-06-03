## Ejecución del Proyecto con Minikube

### Prerrequisitos
- **Git:** Asegúrate de tener Git instalado en tu máquina.
- **Docker:** Asegúrate de tener Docker instalado y en funcionamiento.
- **Minikube:** Asegúrate de tener Minikube instalado.

### Pasos para Ejecutar el Proyecto

1. **Clonar el Repositorio:**
   ```bash
   git clone https://github.com/crcaceres05/DevOps---To-Do-List.git
   cd DevOps---To-Do-List
   
2. **Iniciar Minikube:**
   ```bash
   minikube start

3. **Cargar imagen de DockerHub:**
   ```bash
   docker pull crcaceres05/devops-to-do-list:latest
   minikube image load crcaceres05/devops-to-do-list:latest


4. **Aplicar Manifiestos de Kubernetes en Minikube:**
     ```bash

   kubectl apply -f kubernetes/deployment.yaml
   kubectl apply -f kubernetes/service.yaml

 5. **Instalar Prometheus:**
     ```bash

    helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
	  helm repo update
    helm install prometheus prometheus-community/prometheus

 6. **Instalar Grafana:**
     ```bash

    helm repo add grafana https://grafana.github.io/helm-charts
    helm repo update
    helm install grafana grafana/grafana

  7. **Acceder a Grafana:**
     ```bash
     minikube service grafana -n default --url

  8. **Instalar Jenkins:**
     ```bash
     helm repo add jenkins https://charts.jenkins.io
     helm repo update
     helm install jenkins jenkins/jenkins

  7. **Acceder a Jenkins:**
     ```bash
     minikube service jenkins -n default --url

 7. **Obtener password de Jenkins:**
     ```bash
     kubectl exec --namespace default -it $(kubectl get pods --namespace default -l "app.kubernetes.io/component=jenkins-controller" -o jsonpath="{.items[0].metadata.name}") -- cat /var/jenkins_home/secrets/initialAdminPassword





