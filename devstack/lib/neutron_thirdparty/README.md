Neutron third party specific files
==================================
Some Neutron plugins require third party programs to function.
The files under the directory, ``lib/neutron_thirdparty/``, will be used
when their service are enabled.
Third party program specific configuration variables should be in this file.

* filename: ``<third_party>``
  * The corresponding file name should be same to service name, ``<third_party>``.

functions
---------
``lib/neutron-legacy`` calls the following functions when the ``<third_party>`` is enabled

functions to be implemented
* ``configure_<third_party>``:
  set config files, create data dirs, etc
  e.g.
  sudo python setup.py deploy
  iniset $XXXX_CONF...

* ``init_<third_party>``:
  initialize databases, etc

* ``install_<third_party>``:
  collect source and prepare
  e.g.
  git clone xxx

* ``start_<third_party>``:
  start running processes, including screen if USE_SCREEN=True
  e.g.
  run_process XXXX "$XXXX_DIR/bin/XXXX-bin"

* ``stop_<third_party>``:
  stop running processes (non-screen)
  e.g.
  stop_process XXXX

* ``check_<third_party>``:
  verify that the integration between neutron server and third-party components is sane
