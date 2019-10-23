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

$ docker build .

$ kubectl apply -f web-deploy-svc.yaml