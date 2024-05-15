# Distributed Computing with Spark SQL



>  Notes mainly taken from [Distributed Computing with Spark SQL]() course on Coursera as well as other resources as mentioned below. 



- Spark itself is not a database, It is a computation engine,
- How to access data using Spark and how data's partitioned or subdivided in memory?
-  Engineering data pipelines allows us to go under the hood with how Spark clusters connect to databases using the JDBC protocol, which is a common way of connecting to databases in job environments. 
- Schemas, and types, and why they matter in data pipelines.
- Certain file formats work well in distributed environments and certain formats do not





### Big Data



Big data refers to extremely large and complex sets of data that traditional data processing tools and methods are inadequate to handle. It is Big data generally characterized by variety of different qualities known as the five V's. The five V's are volume, velocity, variety, veracity, and value. 

**Volume**: First and foremost, the size of our data is growing. This is the volume component of big data. 

**Velocity**: The second way that data is growing is in velocity. As we have more and more mechanisms that can produce data, It is arriving in data pipelines at a faster and faster rate. 

**Variety**: We are also seeing increases in the variety of data that we have to deal with, ranging from numeric and textual data to images to video streams, etc. (structured data (like relational databases), semi-structured data (like JSON or XML files), and unstructured data (like text documents, videos, and images).)

**Veracity**: There's also the question of veracity or how much can we trust the data that we have? Some data arriving in our systems may have missing values or may be inaccurate, or maybe it's crowdsource, so it can't always be trusted. 

**Value**: Finally, data is highly valuable, because it allows us to make better, faster decisions. 

At a high level, big data is generally referred to as more data **than** can fit on any single machine. This can range from gigabytes up to terabytes and petabytes and beyond. 





>  Dealing with big data requires specialized technologies and analytics to process, analyze, and extract meaningful insights. Traditional databases and processing applications are often not sufficient to handle the sheer volume and complexity of big data. Technologies like Hadoop, Apache Spark, and NoSQL databases are commonly used to manage and analyze big data.







### Spark

* We need to divide that data and the processing across a number of different machines in order to be able to interact with it. That's where Spark comes in.
* Spark is the open-source industry standard  tool for manipulating big data.
* Spark solution to the problem of big data is to provide the first unified analytics engine. 



![](/images/unified_engine.png)





* Before Spark, the field was dominated by a number of individual tools that were difficult to piece together. 

* Spark simplifies working with data by supporting different languages, including SQL, a common language among data analysts. 

* It supports Python and R for data scientists, and Scala and Java, which is common among software engineers

* Spark also rose to popularity by reading and processing data from many disparate sources, including databases like Postgres or MySQL, Blob Stores like Amazon's S3, data warehouses and files like CSVs. 

* Since much of real life data science involves getting data from various sources and preparing it for use, Spark solved many of the problems faced by analysts, scientists, and engineers. 
* Spark allows you to take your knowledge of SQL and scale it to theoretically an infinite amount of data. 





