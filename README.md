# RuggedPOD

![RuggedPOD](img/ruggedpod.png)

RuggedPOD is a microdatacenter project designed under the [Open Compute Project](http://www.opencompute.org/)
license. The project aims to create the most energy efficient datacenter solution
in the world, through a building block approach without the need of expensive
upfront infrastructure.

The solution is designed to run outdoor, produced everywhere around the world
through communities of hackers. It can be used for edge computing, datacenter,
low cost Telecom solutions, SMB or corporate customers. Use cases are still under
heavy investigation and raised by our daily expanding community as this
breakthrough technology is able to get the cloud back outside !

## Contribute

Anyone can contribute to this documenation and any kind of contribution is welcome. Feel free to submit pull
requests and issues.

Documentation structure is very simple to understand. It's basically a collection of markdown documents. We
use [Gitbook](https://www.gitbook.com) to generate the documentation website and the master branch is
automatically deployed on [ruggedpod.github.io/ruggedpod-doc](http://ruggedpod.github.io/ruggedpod-doc) when updated.

You can easily build the website locally using [Gitbook CLI](https://github.com/GitbookIO/gitbook-cli) on
you computer. First you need [npm](https://www.npmjs.com/), the javascript package manager in order to
install Gitbook.

Then intall the gitbook CLI

```bash
$ npm install -g gitbook-cli
```

Now you are ready to generate the documentation website. You can either run a server locally

```bash
$ gitbook serve
```

or generate a static HTML website

```bash
$ gitbook build
```
