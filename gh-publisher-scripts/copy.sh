# the version you see on http://benyomin.github.io  is the pdf in ./proofs
# when a new release version of the current draft is ready is should be copied there
# Use this file to configure whichever artifacts you wish to publish.
#
# You have the following variables available:
#
GH_PUBLISHER_PROJECT_DIR - "/Users/AbuDavid/personal/benyomin"
GH_PUBLISHER_SCRIPTS_DIR - "/Users/AbuDavid/personal/benyomin/gh-publisher-scripts"
#
#
#GH_PUBLISHER_PROJECT_DIR - 
GH_PUBLISHER_PUBLISH_DIR - "/Users/AbuDavid/personal/benyomin/proofs"
#GH_PUBLISHER_SCRIPTS_DIR - 
#
# The current working directory is $GH_PUBLISHER_PROJECT_DIR.
#

find . \( \
#     -name \*.html -o \
#     -name \*.css -o \
#     -name \*.js -o \
#     -name \*.gif -o \
#    -name \*.jpeg -o \
#     -name \*.jpg -o \
#     -name \*.png -o \
     -name \*.pdf \
     \) -print0 |
    rsync -av --files-from=- --from0 ./ "$GH_PUBLISHER_PUBLISH_DIR"
