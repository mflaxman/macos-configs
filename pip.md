# TODO: install pip (safely) instructions

Regular
```bash
$ pip3 install ipython virtualenv flake8 black requests git+https://github.com/jeffkaufman/icdiff.git
```
(`flake8` needed for vim linting)

Uninstall Everything ([source](https://stackoverflow.com/questions/11248073/what-is-the-easiest-way-to-remove-all-packages-installed-by-pip)):
```bash
$ pip3 freeze | xargs pip3 uninstall -y
```
