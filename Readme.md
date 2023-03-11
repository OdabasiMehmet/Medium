# AWS Three-Tier Blogging Application
A 3-tier architecture is a common way to design web applications, which separates the different components of the application into three layers: presentation, application logic, and data storage. In a typical 3-tier architecture, the presentation layer is responsible for rendering the user interface, the application logic layer processes requests and implements business logic, and the data storage layer manages the application's persistent data.

I recently completed a blogging project and decided to share the methods I used to implement the project. The architecture of the project consists of the presentation tier (S3 and CloudFront), application logic tier (EC2 instances), and data storage tier (MySQL RDS, DynamoDB, and S3). These components are distributed across the public and private subnets within a dedicated VPC, and are designed to be scalable, highly available, and secure.

Here is the diagram of the architecture.

![Diagram](Diagram.png)