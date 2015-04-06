scottatron/terraform
====================

A simple, opinionated Dockerfile and binstub for running [Terraform](https://terraform.io/).

Can optionally decrypt a terrraform.tfvars.json file that has been encrypted using [ejson](https://github.com/Shopify/ejson)

USAGE
-----

The simplest usage is to run the binstub:

    bin/terraform <sub-command>

This volumes mounts your current directory and runs the specified terraform sub-command.

The binstub also checks for a .env file in your current directory and uses to the set the --env-file for the Docker run command

### Decrypting an ejson encrypted terraform.vars.json file

If a **terraform.vars.ejson** file is found, it will be attempted to be decrypted using [ejson](https://github.com/Shopify/ejson). In order for this to work the ejson private key must be provided setting the EJSON_PRIVATE_KEY envrionment variable in the .env file

The encrypted **terraform.vars.ejson** will be decrypted to **terraform.vars.json** before Terraform runs and deleted when finished.
