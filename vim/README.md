VIM is a powerful editor which could be customized with plugins. I use it in my daily development, I have several vim environment configured for different development environment. Then it's a little bit complicated to switch between them.

This repository maintains my vim enviroments and switching tools to simplify the maintenance.


# Tool

* switch_vim_env.sh

This tool provides an easy way to switch the vim environment

Usage:

```
sh switch_vim_env.sh <path to the vim env>
```

Example:

```
sh switch_vim_env.sh environment/simplified/
```

* gen_ctags.sh

This tool would generate tags for C/C++ project.


# Environment

## environment/basic

This is a basic vim environment, it provides develop environment for C/python and require small disk usage.

## environment/simplified

This is a simplified but still powerful vim environment, and it runs quick quickly.

## environment/adv

This is a powerful vim environment, but the response is a little bit slow and requires more disk space.
