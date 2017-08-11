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
  <strong>Nota:</strong> Todos os Namespaces na Plataforma Koli são criados como <strong>${nome_do_namespace}-${cliente}-${organização}</strong>.
</div>