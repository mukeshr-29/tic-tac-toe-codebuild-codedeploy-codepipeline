#!/bin/bash
set -e

docker pull mukeshr29/tic-tac-aws-cicd

docker run -d -p 3000:3000 --name "tic-tac" mukeshr29/tic-tac-aws-cicd