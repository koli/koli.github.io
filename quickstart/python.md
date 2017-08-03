---
layout: doc
title: Python (8 minutos)
sublayout: quickstart
reviewed: 2017-07-27T23:02:00-03:00
---

<div class="alert alert-warning"><strong>Atenção: </strong>É necessário ter uma conta no GitHub. Se ainda não possui cadastre-se <a href="https://github.com/join">aqui</a></div>

* TOC
{:toc}

### Video Guia

<div class="article-video">
  <iframe width="560" height="315" src="https://www.youtube.com/embed/PBbjxXwBHIY" frameborder="0" allowfullscreen></iframe>
</div>

### Fork no GitHub

Faça um fork do projeto de quick start <span class="tab-reference"><a href="https://github.com/koli/python-getting-started"><i class="tab-icon fa fa-code-fork"></i>python-getting-started</a></span>.

### Criar o Deployment

Acesse o Koli Dashboard. Clique no botão <img style="height: 20px" src="../images/add_button.png"> para adicionar um novo ___Deployment___.

<div class="article-image">
  <a href="quickstart_deploy_list.png"><img src="quickstart_deploy_list.png" style="width:100%;"></a>
</div>

Para esse quickstart defina a linguagem `Python`.

<div class="article-image">
  <a href="quickstart_choose_lang.png"><img src="quickstart_choose_lang.png" style="width:100%;"></a>
</div>

Defina o ___Namespace___ que o ___Deployment___ será criado, em seguida clique em `NEXT`.

<div class="article-image">
  <a href="quickstart_set_namespace.png"><img src="quickstart_set_namespace.png" style="width:100%;"></a>
</div>

Escolha agora o nome do seu Deployment. Em seguinda clique em `CREATE`

<div class="article-image">
  <a href="quickstart_python_set_app_name.png"><img src="quickstart_python_set_app_name.png" style="width:100%;"></a>
</div>

### Conectar ao Repositório

Agora vamos conectar o repositório que fizemos o fork ao ___Deployment___. Nesse momento voce deve conseguir buscar seus repositórios, comece digitando o nome do repositório `python-getting-started` para seleciona-lo.

Quando selecionar o repositório desejado clique em `Connect`.

<div class="article-image">
  <a href="quickstart_python_set_repo.png"><img src="quickstart_python_set_repo.png" style="width:100%;"></a>
</div>

Com o repositório conectado ative a opção `Automatic Deployments`. Isso irá criar automáticamente um [Webhook](https://developer.github.com/webhooks/) neste repositório.

<div class="alert alert-info">
  <strong>Nota: </strong>A cada novo commit será enviado um hook para o Koli. Este hook servirá de gatilho para um novo build e deploy da nova versão do código.
</div>

### Iniciando o Build

Em seguida clique em `Deploy` para iniciar __manualmente__ um deploy da branch selecionada. No caso abaixo a branch `master`.

<div class="article-image">
  <a href="quickstart_python_deploy_app.png"><img src="quickstart_python_deploy_app.png" style="width:100%;"></a>
</div>

O build deverá ter sido iniciado, se não visualizar clique no botão <i class="tab-icon fa fa-refresh"></i> para atualizar a lista de builds.

<div class="alert alert-info">
  <strong>Dica: </strong>Voce pode visualizar os Logs do build em andamento clicando no botão <i class="tab-icon fa fa-file-text-o"></i>.
</div>

<div class="article-image">
  <a href="quickstart_builds_list.png"><img src="quickstart_builds_list.png" style="width:100%;"></a>
</div>

### Acessando a Aplicação

Entre em overview para ter acesso ao endereço customizado da sua aplicação. Todas as aplicações possuem um endereço padrão __https://${nome_do_app}-${namespace}.kolihub.io__. 

<div class="article-image">
  <a href="quickstart_python_deploy_overview.png"><img src="quickstart_python_deploy_overview.png" style="width:100%;"></a>
</div>

Agora você pode acessar o link que deverá ver sua aplicação rodando.

<div class="article-image">
  <a href="quickstart_python_web_1.png"><img src="quickstart_python_web_1.png" style="width:100%;"></a>
</div>