# How to run PSQL

    cd res/vagrant
    vagrant up

Now, the PostegreSQL server is running on localhost on port 5432 (the default).

  * Username: `converge`
  * Password: `converge`
  * Database: `house`

In order to stop the server (and stop draining your battery):

    cd res/vagrant
    vagrant destroy


In order to connect to the database from your local machine with `psql`:

    psql -U converge -h localhost house

... and use password "converge"
