---
layout: doc
title: Namespaces
sublayout: concepts
reviewed: 2017-08-10T21:30:00-03:00
---

* TOC
{:toc}

### O que é um Namespace?

`Namespaces` são clusters virtuais que fornecem isolamento lógico entre recursos como [Pods]({{ site.baseurl }}/concepts/pods.html), [Deployments]({{ site.baseurl }}/concepts/deployments.html), [Services]({{ site.baseurl }}/concepts/services.html), etc.

`Namespaces` fornecem um escopo para nomes de recursos, por exemplo, nomes de recursos precisam ser únicos dentro de um namespace, no entanto, podemos ter um recurso com o mesmo nome entre `Namespaces` diferentes.

<div class="alert alert-info">
  <strong>Nota:</strong> Todos os Namespaces na Plataforma Koli são criados como <strong>&lt;nome-do-namespace&gt;-&lt;cliente&gt;-&lt;organização&gt;</strong>.
</div>

### Namespaces e DNS

Quando um [Services]({{ site.baseurl }}/concepts/services.html) é criado, ele também cria um entrada de DNS correspondente. Essa estrada é criada com o padrão __&lt;nome-do-serviço&gt;.&lt;nome-do-namespace&gt;.svc.cluster.local__. Se um container usar apenas __&lt;nome-do-serviço&gt;__, este irá resolver para o `Service` no `Namespace` que esse container pertence. Isso é util quando é usado a mesma configuração entre multiplos `Namespaces`, como por exemplo em ambientes de _Desenvolvimento_, _Staging_ e _Produção_.