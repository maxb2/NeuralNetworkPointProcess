#!/bin/bash
CONDA_BIN=${CONDA_BIN:-conda}
CONDA_BASE=$($CONDA_BIN info --base)
ENV_FILE=${ENV_FILE:-conda.yml}
LOCK_FILE=${LOCK_FILE:-conda-lock.yml}


source $CONDA_BASE/etc/profile.d/conda.sh

_install_env_lock() {
    echo -e "Creating environment from ${LOCK_FILE}...\n\n"
    ${CONDA_BIN} env create -f ${LOCK_FILE} ${@}
}

_upgrade_env() {
    echo -e "Creating environment from ${ENV_FILE}...\n\n"
    ${CONDA_BIN} env create -f ${ENV_FILE} ${@} && \
    rm -rf ${LOCK_FILE} && \
    ${CONDA_BIN} env export > ${LOCK_FILE}
}

_help() {
    echo """
Usage: ./setup.sh COMMAND [ARGS]...

  A setup script for conda environments.
  Hint: use '--force' if the environments already exist. 

Commands:

  i, install
      Creates environment from lock file.
      
  u, upgrade
      Creates environment from environment file, potentially upgrading packages.
    """
}

case ${1} in
    install|i) _install_env_lock ${@:2} ;;
    upgrade|u) _upgrade_env ${@:2} ;;
    *) _help ;;
esac