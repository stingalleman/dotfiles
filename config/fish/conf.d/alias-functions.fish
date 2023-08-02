function gscp
    git stage . ; git commit -m $argv ; git push
end
funcsave gscp

function gen-secret
    k get secrets -n $argv[2] $argv[1] -o yaml | yq -y "{apiVersion: .apiVersion, kind: .kind, metadata: {name: .metadata.name, namespace: .metadata.namespace}, type: .type, data: .data}" > $argv[1]
end
funcsave gen-secret
