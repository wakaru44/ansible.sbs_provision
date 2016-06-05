

print "Just combine both list of repos and local paths"

with open(".ansible/juanantoniofm.github.com.repos") as f1:
    with open(".ansible/juanantoniofm.github.com.localpath") as f2:
        def listero(repo,local):
            print """      - {{ "repo": {0},
            "dest": {1} }},""".format(repo.strip(" \n\t\"") ,local.strip(" \n\t\""))
            return (repo,local)
        map(listero,f1.readlines(), f2.readlines() )

