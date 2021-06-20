🐋 docker-asmttpd
=================

`ASMTTPD <https://github.com/nemasu/asmttpd>`_, but Dockerized!

Building
========

Building your own images of this repository should only be used for
developmental purposes! If you are a consumer, use the
[prebuilt images](https://hub.docker.com/r/fuwn/asmttpd).

.. code-block:: shell

  $ docker build -t $USERNAME/asmttpd .

Usage
=====

Docker
------

Prerequisites
^^^^^^^^^^^^^

- `Docker <https://docs.docker.com/engine/install/>`_

Usage
^^^^^

.. code-block:: shell

  $ docker run \
  > -p 8080:80 \
  > -v /var/lib/asmttpd:/usr/src/app/web_root \
  > fuwn/asmttpd

Copyable
^^^^^^^^

.. code-block:: shell

  docker run -d -p 8080:80 -v /var/lib/asmttpd:/usr/src/app/web_root fuwn/asmttpd

Notes
^^^^^

Your web root directory can be found in :code:`/var/lib/asmttpd`.

Docker Compose
--------------

- `Docker <https://docs.docker.com/engine/install/>`_
- `Docker Compose <https://docs.docker.com/compose/install/>`_ (newer versions of Docker include Docker Compose!)

Usage
^^^^^

1. Create a directory, preferably in a monitorable location, :code:`cd` into it, and create a file named :code:`docker-compose.yml` with the following contents:

.. code-block:: yml

  # docker-compose.yml
  
  version: "3.3"
  services:
    asmttpd:
      ports:
        - "8080:80"
      volumes:
        - ./asmttpd:/usr/src/app/web_root
      image: fuwn/asmttpd

2. Execute :code:`docker-compose up -d` (or :code:`docker compose up -d` in later versions of Docker).

Notes
^^^^^

Your web root directory can be found in :code:`./asmttpd`.

License
~~~~~~~

`GNU General Public License v3.0 <./LICENSE>`_
