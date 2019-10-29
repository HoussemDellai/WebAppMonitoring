$ mkdir WebApp
$ dotnet new mvc
$ dotnet run
$ dotnet add package prometheus-net
$ dotnet add package prometheus-net.AspNetCore
# Addthe following code to Startup.cs class in the Configure method
# to enable Prometheus metrics
#   app.UseMetricServer(url: "/metrics");
$ dotnet run
# Open the web app on https://localhost:5001/metrics

# Create a docker container
$ docker build -t houssemdocker/webappmonitoring:prometheus .
$ docker run -d -p 5555:80/tcp houssemdocker/webappmonitoring:prometheus
$ docker push houssemdocker/webappmonitoring:prometheus

# deploy the container into Kubernetes
$ kubectl apply -f web-deploy-svc.yaml

# 