# `update`

Welcome to `update` 🎉

`update` is a simple shell- and hook-based based update system for FreeBSD. The general idea is to provide a trivial
invocation  mechanism which invokes so-called "update hooks" which in turn perform the real update tasks. Therefore you
can easily deploy update tasks for your own services (e.g. `pip`-installed python applications).

Update-hooks are simple executables and must be stored in `libexec/update.d` and marked as executable. `update` delivers
a few FreeBSD specific hooks which can be used as an example to build yout own hooks.
