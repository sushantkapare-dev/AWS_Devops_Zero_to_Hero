## what is prometheus?
Prometheus is an open-source monitoring and alerting system designed for efficiently collecting, storing, and querying time-series data. It is widely used in the field of cloud-native and containerized applications to monitor the performance and health of various systems and services. Prometheus works by scraping metrics from instrumented applications and infrastructure components, storing this data in a time-series database, and providing a powerful query language for analyzing and creating custom alerts based on the collected data. Its architecture is highly scalable and adaptable, making it a popular choice for monitoring container orchestration platforms like Kubernetes. Prometheus plays a crucial role in helping organizations gain insights into their applications' performance, diagnose issues, and proactively respond to anomalies and outages, ultimately contributing to improved system reliability and operational efficiency.

Here are some key features of Prometheus:

1. **Data Collection**: Prometheus collects time-series data from various sources, such as applications, services, servers, and network devices. This data is typically in the form of numeric metrics, like CPU usage, memory usage, and request latencies.

2. **Data Storage**: Prometheus stores collected data in a time-series database optimized for fast querying and retrieval. The database uses a custom query language called PromQL (Prometheus Query Language) for extracting and manipulating data.

3. **Metrics Exporters**: To collect data from different services and applications, Prometheus relies on instrumented code and exporters. These exporters expose metrics in a standardized format (typically, HTTP endpoints) that Prometheus can scrape and store.

4. **Alerting**: Prometheus has a built-in alerting system that allows users to define alerting rules based on query expressions written in PromQL. When a rule is triggered, Prometheus can send alerts to various alerting mechanisms, such as email, Slack, or other integrations.

5. **Grafana Integration**: While Prometheus is excellent for data collection and alerting, Grafana, a popular open-source visualization tool, is often used in conjunction with Prometheus to create interactive and customizable dashboards for monitoring and analysis.

6. **Service Discovery**: Prometheus supports various service discovery mechanisms, making it easier to dynamically discover and monitor new instances of services as they come online or go offline.

7. **Scalability**: Prometheus is designed to be highly scalable and can handle a large volume of metrics and data points. It can also be deployed in a federated setup, allowing multiple Prometheus servers to work together to collect and aggregate data from different sources.

8. **Pull-Based Model**: Prometheus follows a pull-based model, where it periodically queries endpoints to collect metrics. This approach simplifies monitoring setups, as services only need to expose metrics endpoints, and there's no need for complex agent installations on every target.

## Architecture of Prometheus?
![What-is-Prometheus-Architecutre-components1-740x414](https://github.com/SushantOps/AWS_Devops_Questions_and_Answers/assets/109059766/c3ab36a0-4a31-4a60-9618-f43f88b446d5)

Prometheus has a modular architecture that consists of several components working together to collect, store, and query monitoring data. Here's an overview of the key components and their roles in the Prometheus architecture:

1. **Prometheus Server**:
   - The core component of Prometheus is the Prometheus server. It is responsible for data collection, storage, and query processing.
   - The server periodically scrapes metrics from configured targets, which can be applications, services, or other systems that expose metrics via HTTP endpoints.
   - Prometheus stores scraped metrics in its local time-series database.

2. **Data Storage**:
   - Prometheus uses a custom time-series database optimized for high write and query performance. This storage engine efficiently stores and indexes time-series data.
   - The storage format is designed to handle the high cardinality of time-series data, making it well-suited for modern, dynamic environments.

3. **PromQL (Prometheus Query Language)**:
   - Prometheus Query Language (PromQL) is a powerful language used to query and manipulate the collected metrics data.
   - Users can write PromQL queries to retrieve and transform metrics, enabling real-time monitoring and alerting.

4. **Metrics Exporters**:
   - Metrics exporters are software components that run alongside applications or services and expose their metrics in a format Prometheus can scrape.
   - Exporters are available for a wide range of technologies, including databases, web servers, and cloud services.
   - Examples include the Node Exporter for system-level metrics and the Blackbox Exporter for probing network endpoints.

5. **Service Discovery**:
   - Prometheus supports various service discovery mechanisms to dynamically discover and monitor new instances of services as they come and go.
   - Service discovery can be static (configured in Prometheus configuration files) or dynamic (using tools like Kubernetes service discovery).

6. **Alert Manager**:
   - The Alert Manager is a separate component responsible for handling alerts generated by Prometheus.
   - Prometheus server sends alerts to the Alert Manager when predefined alerting rules are triggered.
   - The Alert Manager manages alert notifications, including deduplication, grouping, and sending alerts to various alerting channels (e.g., email, Slack, or webhooks).

## How Prometheous handle service descovery?
Prometheus handles service discovery by offering multiple mechanisms for dynamically discovering and monitoring instances of services. It can use static configuration files or leverage dynamic service discovery tools, such as Kubernetes, Consul, or DNS-based discovery. These mechanisms enable Prometheus to automatically discover new instances of services as they come online or go offline, ensuring that monitoring remains up-to-date and adaptable to changing infrastructure conditions. This dynamic service discovery simplifies the management of monitoring configurations and helps ensure that all relevant targets are continuously monitored without manual intervention.

## what is metric label in prometheous?
In Prometheus, a metric label is a key-value pair associated with a metric that provides additional metadata or context to the metric data. Labels allow users to differentiate and aggregate metric values based on specific characteristics or dimensions, enabling more fine-grained analysis and alerting. For example, in a metric representing HTTP request latency, labels could include information such as the HTTP method, endpoint, and status code, allowing users to analyze and alert on latency for specific routes or error codes. Labels are a fundamental concept in PromQL queries, enabling users to filter, group, and aggregate metric data effectively.

## How do you write basic PromQL Query?
Writing a basic PromQL (Prometheus Query Language) query involves selecting a metric, optionally applying filters or aggregations using labels, and specifying a time range. Here's a step-by-step guide on how to write a simple PromQL query:

1. **Select a Metric**:
   - Begin your query by selecting the metric you want to retrieve data for. Metrics in Prometheus are typically represented as a combination of metric name and labels enclosed in curly braces `{}`.
   - For example, if you want to query CPU usage for a specific server, you might have a metric like `cpu_usage{server="example-server"}`.

2. **Apply Filters (Optional)**:
   - You can apply filters to narrow down the data you want to query. Filters are typically applied using label selectors enclosed in square brackets `[]`.
   - For instance, to query only the CPU usage for the "example-server" with the label `region="us-west"`, you could write: `cpu_usage{server="example-server", region="us-west"}`.

3. **Aggregations (Optional)**:
   - You can use aggregation functions to summarize or manipulate metric data. Common aggregation functions include `sum`, `avg`, `min`, `max`, and others.
   - For example, to calculate the average CPU usage across all instances of a server, you can use: `avg(cpu_usage{server="example-server"})`.

4. **Specify a Time Range**:
   - PromQL queries operate within a specified time range. You can use the `time()` function to specify a time window.
   - For instance, to retrieve the CPU usage for the last 1 hour, you can use: `cpu_usage{server="example-server"}[1h]`.

5. **Putting It All Together**:
   - Here's a complete example of a basic PromQL query that selects CPU usage for "example-server," filters by region, calculates the average over the last 1 hour, and returns a time series:

   ```promql
   avg(cpu_usage{server="example-server", region="us-west"})[1h]
   ```

6. **Query in Prometheus**:
   - To execute your PromQL query, you can use the Prometheus web interface, the Prometheus API, or tools like `curl` if you're working with the API directly.
   - In the Prometheus web interface, you can access the "Graph" tab, paste your query into the input field, and click "Execute" to visualize the results as a graph.

PromQL is a powerful language for querying and analyzing time-series data in Prometheus, and you can create more complex queries by combining various functions, operators, and expressions to suit your monitoring and alerting needs.

