# Blog GoLang

Repo du blog en GoLang

## Prérequis

- [GO Hugo](https://gohugo.io/getting-started/quick-start/)

## Installation de zéro

[RTFM](https://gohugo.io/getting-started/quick-start/) ou alors :

```bash
hugo new site ./ --force
git init
git submodule add https://github.com/Zenithar/hugo-theme-bleak.git themes/bleak
echo "public/" >> .gitignore
echo 'theme = "bleak"' >> config.toml
```

## Installation pour écrire

```bash
git clone https://github.com/jeremy-wizaplace/blog-go.git
git submodule init
git submodule update
```

## Ecrire du contenu

```bash
hugo new posts/my-post.md
```

## Lancer le serveur en dev

```bash
hugo server -D
```

Le `-D` permet de compiler les posts en draft.

## Déploiement

Le déploiement est entièrement automatisé grâce à CircleCI
