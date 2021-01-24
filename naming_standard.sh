#!/bin/bash
​
span=("5b2e0eaef5556ab4ee820871199cf189c0b1b32c 2361d967395881cafa154fc814989183dd3bba85 0ca33b11bb9e58a7f522c9fa61cf4904d9032ee0")
​
echo "Commit message is $span"
​
  for COMMIT in $span;
  do
    for FILE  in `git log -1 --name-only --pretty=format:'' $COMMIT`;
    do
      echo "File content is $COMMIT"
      case $FILE in
      *.zip|*.gz|*.tgz|*.exe )
        echo "Hello there! We have restricted committing that filetype. Please see Dave in IT to discuss alternatives."
        ;;
      resourcequota.*|namespace.* )
        echo "Naming standards"
        ;;
      *)
        echo "hi"
        ;;
      esac
    done
  done
Collapse



