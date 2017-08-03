---
layout: doc
title: Services e Ingress
sublayout: concepts
reviewed: 2017-08-01T16:00:00-03:00
---

[Pods]({{ site.baseurl }}/concepts/pods.html) são entidades mortais. Eles nascem e quando morrem eles não ressuscitam. [ReplicaSets](#TODO) em particular, criam e destroem `Pods` dinâmicamente(Ex.: Escalando e Desescalando applicações ou durante um [Rolling Update](#TODO)). Enquanto cada `Pod` recebe seu próprio endereço de IP, esses não podem ser confiáveis, uma vez que não podemos garantir que permanecerão com o mesmo IP com o passar do tempo. Isso traz um problema, imagine a seguinte situação: Um primeiro conjunto de `Pods` (Backends) provê uma API para um segundo conjunto de `Pods`(Frontends) como esses frontends vão descobrir e encontrar quais são os `Pods` de backend de uma maneira dinâmica?

* TOC
{:toc}

### O que é Service?
`Service` é uma abstração que define lógicamente um conjunto de `Pods` e uma politica de roteamento associada. O conjunto de `Pods` alvo de um `Service` é (geralmente) determinado por um [Label Selector](#TODO).

<div class="alert alert-info">
  <strong>Nota:</strong> Todas aplicações e banco de dados na Plataforma Koli sobem automaticamente com um <strong>Service</strong> configurados.
</div> 

![Services overview diagram for iptables proxy](services-iptables-overview.svg)

### O que é Ingress?
Tipicamente, `Services` e `Pods` possuem IPs roteáveis pela rede local. Todo tráfego que acaba no roteador de borda é descardado. Conceitualmente isso é como a figura abaixo:


```
    internet
        |
  ------------
  [ Services ]
```

Um ingress é um conjunto de regras que permitem conexões oriundas da internet acessarem os serviço internos (`Services`).

```
    internet
        |
   [ Ingress ]
   --|-----|--
   [ Services ]
```

Pode ser configurado para fornecer aos `Services` URLs acessíveis externamente.

<div class="alert alert-info">
  <strong>Nota:</strong> Todas aplicações na Plataforma Koli sobem automaticamente com um <strong>Ingress</strong> configurado.
</div> 