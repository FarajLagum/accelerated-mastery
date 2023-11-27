# Getting Strat with MLflow



### MLflow 

MLflow is an open-source platform for managing the end-to-end machine learning lifecycle. MLflow is a highly adaptable and open-source platform that efficiently manages workflows and artifacts throughout the entire machine learning lifecycle. With its seamless integration with numerous popular ML libraries, it caters to a wide range of needs. Moreover, MLflow is not limited to specific libraries, algorithms, or deployment tools, as it can be easily extended with custom plugins to support new workflows, libraries, and tools.



### MLflow and MLOps:

- The widespread adoption of machine learning solutions has led to new technical and organizational challenges.
- MLOps has emerged as a response to these challenges, aiming to create tools and practices for efficient management of machine learning projects.





## The primary components of MLflow:



### 1. MLflow Tracking:

MLflow Tracking is a system for recording and querying experiments, parameters, metrics, and artifacts associated with machine learning projects. It allows users to log and compare experiments, making it easy to track model performance and experiment with different hyperparameters.

- MLflow Tracking helps manage the training and evaluation process.
- In an iterative model development process, numerous training runs with variations are performed.
- MLflow Tracking allows users to store and compare training run data, providing traceability and reproducibility.
- It offers a user-friendly UI and an API for programmatic querying and comparison of training runs.

### 2. MLflow Models:

MLflow Models is a way to package and deploy machine learning models in various formats, making it straightforward to deploy them to different serving platforms.

- MLflow Models simplifies model deployment.
- The packaging format streamlines the handover process and reduces overhead.

- Format for packaing models: MLflow Models introduces a packaging format for models, making it easy to deploy them in batch mode or as real-time web services.
- Running predictions against exisiting dataset
- Real time serving. 

### 3. MLflow Model Registry:

MLflow Model Registry is an optional component that helps with model versioning, staging, and collaboration. It allows users to manage and share models in a centralized repository. MLflow Model Registry addresses challenges in managing and deploying multiple models. It allows authorized users to browse models, their metadata, and choose appropriate models for deployment. In organizations with numerous ML models, it's essential to have a centralized repository.

- Centralized model catalogue: MLflow Model Registry acts as a single source of truth for model storage, metadata, and deployment.
- Models can be used/deployed directly from the registry
- The Model Registry can be used to build automated deployment tools, reducing the burden on the engineering team.

### 4. MLflow Projects:

 MLflow Projects provide a standardized format for packaging code and dependencies, making it easier to reproduce and share machine learning workflows. This helps ensure that experiments can be run consistently across different environments.

- MLflow Projects focuses on environment management.
- It provides a structured approach to defining dependencies and environments for ML projects.





