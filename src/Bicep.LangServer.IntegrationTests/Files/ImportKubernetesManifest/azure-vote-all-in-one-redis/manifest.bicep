@secure()
param kubeConfig string

provider 'kubernetes@1.0.0' with {
  namespace: 'default'
  kubeConfig: kubeConfig
}

resource appsDeployment_azureVoteBack 'apps/Deployment@v1' = {
  metadata: {
    name: 'azure-vote-back'
  }
  spec: {
    replicas: 1
    selector: {
      matchLabels: {
        app: 'azure-vote-back'
      }
    }
    template: {
      metadata: {
        labels: {
          app: 'azure-vote-back'
        }
      }
      spec: {
        nodeSelector: {
          'beta.kubernetes.io/os': 'linux'
        }
        containers: [
          {
            name: 'azure-vote-back'
            image: 'mcr.microsoft.com/oss/bitnami/redis:6.0.8'
            env: [
              {
                name: 'ALLOW_EMPTY_PASSWORD'
                value: 'yes'
              }
            ]
            ports: [
              {
                containerPort: 6379
                name: 'redis'
              }
            ]
          }
        ]
      }
    }
  }
}

resource coreService_azureVoteBack 'core/Service@v1' = {
  metadata: {
    name: 'azure-vote-back'
  }
  spec: {
    ports: [
      {
        port: 6379
      }
    ]
    selector: {
      app: 'azure-vote-back'
    }
  }
}

resource appsDeployment_azureVoteFront 'apps/Deployment@v1' = {
  metadata: {
    name: 'azure-vote-front'
  }
  spec: {
    replicas: 1
    selector: {
      matchLabels: {
        app: 'azure-vote-front'
      }
    }
    strategy: {
      rollingUpdate: {
        maxSurge: 1
        maxUnavailable: 1
      }
    }
    minReadySeconds: 5
    template: {
      metadata: {
        labels: {
          app: 'azure-vote-front'
        }
      }
      spec: {
        nodeSelector: {
          'beta.kubernetes.io/os': 'linux'
        }
        containers: [
          {
            name: 'azure-vote-front'
            image: 'mcr.microsoft.com/azuredocs/azure-vote-front:v1'
            ports: [
              {
                containerPort: 80
              }
            ]
            resources: {
              requests: {
                cpu: '250m'
              }
              limits: {
                cpu: '500m'
              }
            }
            env: [
              {
                name: 'REDIS'
                value: 'azure-vote-back'
              }
            ]
          }
        ]
      }
    }
  }
}

resource coreService_azureVoteFront 'core/Service@v1' = {
  metadata: {
    name: 'azure-vote-front'
  }
  spec: {
    type: 'LoadBalancer'
    ports: [
      {
        port: 80
      }
    ]
    selector: {
      app: 'azure-vote-front'
    }
  }
}