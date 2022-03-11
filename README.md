# Manuel theme for oh-my-zsh. Based on Felipe Cabargas [rubyist theme](https://github.com/felipecabargas/oh-my-zsh-rubyist-theme)

## **Description**

The shell shows the following info:

    rvm:(ruby-version) nvm:(node-version) gvm:(go-version)
    ↪ path git:(branch) git-status

Example:

![](theme.png)

---

### NOTE: The previous info will be displayed only if you alredy install the managers:

- Ruby version with [RVM](https://rvm.io/) / [RBENV](https://github.com/rbenv/rbenv)
- Node version with [NVM](https://github.com/nvm-sh/nvm)
- Go version with [GVM](https://github.com/moovweb/gvm)

---

## **Instalation**

1.  Clone this repository
2.  Move theme file to your Oh-My-Zsh instalation themes folder:

        cp path/to/manuel.zsh-theme ~/.oh-my-zsh/themes/

3.  Edit the `ZSH_THEME` var in your `.zshrc` file in order to match the theme:

        ZSH_THEME = "manuel"

4.  Enjoy!

---

**Manuel Rodrigues 2022** &copy;
