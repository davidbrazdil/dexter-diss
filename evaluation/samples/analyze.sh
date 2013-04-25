#!/bin/sh
SECTION_START=`grep -n "code_item section" "$1" | cut -d: -f1`
SECTION_END=`grep -n "annotations_directory_item section" "$1" | cut -d: -f1`
echo $SECTION_START
echo $SECTION_END
