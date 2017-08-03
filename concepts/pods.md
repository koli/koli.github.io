---
layout: doc
title: Pods
sublayout: concepts
reviewed: 2017-08-01T16:00:00-03:00
---

* TOC
{:toc}

### O que é um Pod?

___Pods___ são a menor unidade de computação que pode ser criada e gerenciada no Kubernetes. Um ___Pod___ é um grupo de um ou mais containers (como [Docker Containers](https://www.docker.com/what-docker)) com informações de armazenamentos compartilhados e as opções de como executar esses containers.

O contexto compartilhado que um ___Pod___ roda nada mais é que um conjunto de: [Linux Namespaces](https://en.wikipedia.org/wiki/Linux_namespaces), [cgroups](https://en.wikipedia.org/wiki/Cgroups) entre outros recursos de isolação - [Os mesmos](https://docs.docker.com/engine/security/security/) recursos que isolam um ___Docker Container___. Dentro do contexto de ___Pod___, as aplicações individuais podem conter outras camadas de sub-isolamento applicadas.

Como aplicações individuais rodando em container, ___Pods___ são considerados entidades relativamente efêmeras(voláteis). ___Pods___ são criados com um único ID (UID) e associados à rodar em um ___Host___, onde vão permanecer rodando até ser finalizado. Se o ___Host___ morrer, os ___Pods___ associados a esse ___Host___ serão finalizados após um periodo de timeout e podem ser associados a um novo ___Host___ automaticamente. Veja [Replication Controllers](#TODO) e [Deployments](#TODO).

<div class="alert alert-info">
  <strong>Info:</strong> Todas aplicações na Plataforma Koli sobem como <strong>Deployments</strong> que garantem a alta disponibilidade dos <strong>Pods</strong>.
</div> 