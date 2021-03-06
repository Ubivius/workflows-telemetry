#!/bin/sh
while read line;
do
    cd $line;
    gh pr create --title $GITHUB_REF --base dev --body "<h4> What changes does this PR contain?</h4> A distribution of updated Devops files <h4> Which JIRA ticket ID's are associated with this PR?</h4> None at the moment <h4> How was it tested (Steps to reproduce by reviewers)?</h4> By running action in example project: jaeger <h4> Notes for reviewers</h4> @ubivius/telemetry";
    cd ..;
done
