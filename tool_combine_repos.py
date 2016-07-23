#!/usr/bin/ python

print "Just combine both list of repos and local paths"

username="juanantoniofm"



with open(".ansible/{0}.github.com.repos".format(username)) as f1:
    with open(".ansible/{0}.github.com.localpath".format(username)) as f2:
        def listero(repo,local):
            print """      - {{ "repo": {0},
            "dest": {1} }},""".format(repo.strip(" \n\t\"") ,local.strip(" \n\t\""))
            return (repo,local)
        map(listero,f1.readlines(), f2.readlines() )

