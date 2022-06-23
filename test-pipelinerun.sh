#!/bin/bash

kubectl apply -f pvc.yaml
tkn-pac resolve -f .tekton/pull-request.yaml \
--params revision=main \
--params repo_url=https://github.com/AndrienkoAleksandr/pipelines-service.git \
| kubectl create -f-
