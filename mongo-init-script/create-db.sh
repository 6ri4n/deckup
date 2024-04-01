#!/bin/bash
echo "Creating database 'untitled'..."

mongo <<EOF
use untitled
db.createCollection("User")
exit
EOF

echo "Created database 'untitled'"