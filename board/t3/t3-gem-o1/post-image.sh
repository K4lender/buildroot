#!/bin/bash
set -e

BOARD_DIR="$(dirname "$0")"
GENIMAGE_CFG="${BOARD_DIR}/genimage.cfg"
GENIMAGE_TMP="$(mktemp -d)"
ROOTPATH_TMP="$(mktemp -d)"

# Copy uEnv.txt to binaries directory so genimage can pack it into FAT
cp -f "${BOARD_DIR}/uEnv.txt" "${BINARIES_DIR}/uEnv.txt"

trap 'rm -rf "${GENIMAGE_TMP}" "${ROOTPATH_TMP}"' EXIT

${HOST_DIR}/bin/genimage \
        --rootpath "${ROOTPATH_TMP}" \
        --tmppath "${GENIMAGE_TMP}" \
        --inputpath "${BINARIES_DIR}" \
        --outputpath "${BINARIES_DIR}" \
        --config "${GENIMAGE_CFG}"

exit $?
