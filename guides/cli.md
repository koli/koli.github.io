---
layout: doc
title: CLI
sublayout: guides
fullversion: 1.7
reviewed: 2017-08-03T19:00:00-03:00
---

`kubectl` é a interface de linha de comando que usamos para gerenciar as aplicações no __Koli__. Esse overview irá cobrir a sintaxe do `kubectl`, descrever as operações dos comandos além de prover alguns exemplos comuns de uso.

* TOC
{:toc}

### Instalação

Aqui estão alguns métodos para instalar o `kubectl`.

#### Instalar com curl


##### MacOS
1. Download a última versão do kubectl:

       curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/darwin/amd64/kubectl

    Para fazer o download  de uma versão específica, substitua `$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)` com a versão desejada.

    Por exemplo, para fazer o download da versão {{page.fullversion}} no MacOS, execute:

       curl -LO https://storage.googleapis.com/kubernetes-release/release/{{page.fullversion}}/bin/darwin/amd64/kubectl

2. Torne o kubectl executável.

    ```
    chmod +x ./kubectl
    ```

3. Mova o binário para seu PATH.

    ```
    sudo mv ./kubectl /usr/local/bin/kubectl
    ```

##### Linux
1. Download a última versão do kubectl:

       curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl

    Para fazer o download  de uma versão específica, substitua `$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)` com a versão desejada.

    Por exemplo, para fazer o download da versão {{page.fullversion}} no Linux, execute:

       curl -LO https://storage.googleapis.com/kubernetes-release/release/{{page.fullversion}}/bin/linux/amd64/kubectl

2. Torne o kubectl executável.

    ```
    chmod +x ./kubectl
    ```

3. Mova o binário para seu PATH.

    ```
    sudo mv ./kubectl /usr/local/bin/kubectl
    ```

##### Windows

1. Download a última versão do kubectl {{page.fullversion}} [nesse link](https://storage.googleapis.com/kubernetes-release/release/{{page.fullversion}}/bin/windows/amd64/kubectl.exe).

    Ou, se voce possui `curl` instalado, use o seguinte comando:

       curl -LO https://storage.googleapis.com/kubernetes-release/release/{{page.fullversion}}/bin/windows/amd64/kubectl.exe

    Para descobrir a última versão estável, veja em https://storage.googleapis.com/kubernetes-release/release/stable.txt

2. Adicione o binário ao seu PATH.

#### Instalar com Homebrew no MacOS

1. Se voce usa MacOS e utiliza o gerenciador de pacotes [Homebrew](https://brew.sh/), voce pode instalar com o seguinde comando:

       brew install kubectl

2. Rode `kubectl version` para verifical qual a versão está instalada.


#### Instalar com Chocolatey no Windows

1. Se voce usa Windows e utiliza o gerenciador de pacotes [Chocolatey](https://chocolatey.org), voce pode instalar com o seguinte comando:

        choco install kubernetes-cli

2. Rode `kubectl version` para verifical qual a versão está instalada.

### Configuração

Para utilizarmos o `kubectl` precisamos definir seu arquivo de configuração com as devidas credenciais. Por padrão o arquivo de configuração é o `~/.kube/config`.

1. Para gerar esse arquivo de configuração acesse o **Portal Koli** e clique no Item <span class="tab-reference"><i class="tab-icon fa fa-terminal"></i>CLI</span> no menu superior.

<div class="article-image">
  <img src="images/cli_configure_dashboard.png" style="width:100%;">
</div>

2. Crie o arquivo `~/.kube/config` com o conteúdo copiado.

```bash
mkdir ~/.kube
vim ~/.kube/config
```
O conteúdo que copiou deve conter algo parecido como:

```yaml
kind: Config
apiVersion: v1
preferences:
  colors: true
current-context: koli
clusters:
- cluster:
    server: https://api.kolihub.io
  name: koli
contexts:
- context:
    cluster: koli
    namespace: dev-duck-koli
    user: user@domain.com
  name: koli
users:
- name: user@domain.com
  user:
    token: bearer token
```

Para checar se sua configuração está funcionando rode:

```bash
kubectl cluster-info
```