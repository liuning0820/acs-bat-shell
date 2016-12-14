#!/bin/bash

  hours=$(date +%I)
  echo "Hours : $hours"
  speed=30

  case "$hours" in

  "08") speed=2 ;;

  "09") speed=5 ;;

  "10") speed=1 ;;
  esac
  echo "speed : $speed"