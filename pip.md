# TODO: install pip (safely) instructions

Regular
```bash
$ pip3 black flake8 install ipython pyclean pyspelling requests virtualenv
```
(`flake8` needed for vim linting)

Uninstall everything ([source](https://stackoverflow.com/questions/11248073/what-is-the-easiest-way-to-remove-all-packages-installed-by-pip)):
```bash
$ pip3 uninstall -y -r <(pip3 freeze)
```
or
```bash
$ pip3 freeze | xargs pip3 uninstall -y
```
