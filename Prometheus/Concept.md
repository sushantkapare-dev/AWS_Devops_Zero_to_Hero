## what is prometheus?
It is an open-source monitoring tool that collect metrics data and provide tolls thats visualize the collected data. Prometheus allows you to generate **alerts** whhen metrics reach a user specified threshold.
Prometheus collects metrics by scraping targets who expose metrics through an HTTP endpoint. Scraped metrics are then stored in a time series database which can be queried using promtheus bild in query languages **PromQL** .

## Kind of metrics can Prometheus Monitor ?
- CPU/Memory Utilization
- Disk space
- Service Uptime
- Application sepecific data
  
      Number of expectation
  
      Latency
  
      Pending Requests
