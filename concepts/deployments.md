---
layout: doc
title: Deployments
sublayout: concepts
reviewed: 2017-08-03T19:00:00-03:00
---

* TOC
{:toc}

### O que é um Deployment?

Um `Deployment` fornece atualizações declarativas para [Pods]({{ site.baseurl }}/concepts/pods.html) e [ReplicaSets]().

Voce descreve o estado desejado em um Deployment e o `Deployment Controller` altera o estado atual para o desejado em um rítimo controlado.

<div class="alert alert-warning">
  <strong>Atenção:</strong> Você não deve gerenciar <strong>ReplicaSets</strong> controlados por um <strong>Deployment</strong> Todos os casos de uso devem ser cobertos pelo objeto <strong>Deployment</strong>.
</div>

<div class="alert alert-info">
  <strong>Nota:</strong> Todas aplicações na Plataforma Koli sobem como <strong>Deployments</strong> que garantem a alta disponibilidade dos <strong>Pods</strong>.
</div>

### Status do Deployment

Um `Deployment` entra em varios estados durante seu ciclo de vida. Pode ser [progressing](#progressing-deployment) enquanto rolando um novo `ReplicaSet`, [complete](#complete-deployment), ou [failed](#failed-deployment).

#### Progressing Deployment

Kubernetes marca um `Deployment` como _progressing_ quando uma das seguintas tarefas é iniciada:

* O `Deployment` cria um novo `ReplicaSet`.
* O `Deployment` está escalando o novo `ReplicaSet`.
* O `Deployment` está "desescalando" o antigo `ReplicaSet(s)`.
* Os novos `Pods` tornam-se ___ready___ ou ___available___.

#### Complete Deployment

Kubernetes marca um `Deployment` como _complete_ quando este tem as seguintes caracteristicas:

* Todos os `ReplicaSets` associados com o `Deployment` foram atualizados com a última versão que você especificou, siginificando que as solicitações de atualização foram completadas.
* Todas os `ReplicaSets` associados com o `Deployment` estão disponíveis.
* Nenhuma `ReplicaSet` antigo associado com o `Deployment` está rodando.

#### Failed Deployment

Seu `Deployment` pode travar tentando iniciar o novo `ReplicaSet` sem nunca terminar. Isso pode ocorrer devido a alguns dos seguintes fatores:

* Cota insuficiente
* Erros baixando uma imagem do container
* Permissões insuficientes
* Limites
* Runtime da aplicação mal configurado