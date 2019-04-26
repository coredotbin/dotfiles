#!/bin/bash
sensors | awk '/^Package id 0/ {print $4}'
