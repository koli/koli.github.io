---
layout: doc
title: ReplicaSets
sublayout: concepts
reviewed: 2017-08-01T16:00:00-03:00
---

* TOC
{:toc}

### O que é um ReplicaSet?

Um `ReplicaSet` garante que o número definido de replicas de um [Pod]({{ site.baseurl }}/concepts/pods.html) está rodando naquele momento. Em outras palavras o `ReplicaSet` garante que um `Pod` ou um conjunto homogêneo de `Pods` estão sempre rodando e disponíveis.

Se há mais `Pods` do que o desejado, o `ReplicaSet` irá terminar os `Pods` extras. Se há menos do que o definido o `ReplicaSet` irá iniciar mais `Pods`. Ao contrário de `Pods` criados manualmente, os `Pods` gerenciados por um `ReplicaSet` são automaticamente recriados se eles ___falharem___, forem ___deletados___ ou ___terminados___. Por exemplo, seus `Pods` são re-criados em um `Host` após uma manutenção disruptiva como um upgrade de kernel. Por essa razão, voce deve usar um `ReplicaSet` mesmo se sua aplicação precisa de apenas um único `Pod`.


<div class="alert alert-info">
  <strong>Nota:</strong> Todas aplicações na Plataforma Koli sobem como <strong>Deployments</strong>, que abstraem os <strong>ReplicaSets</strong> e garantem a alta disponibilidade dos <strong>Pods</strong>.
</div> 