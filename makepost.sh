#! /bin/bash

# TODO: Write some webscraping scripts to auto update the goals/pbs and events section

cd _posts || exit

CURRENTDATE=$(date +"%Y-%m-%d")

touch "${CURRENTDATE}"-blog-post.md

echo "---" >> ${CURRENTDATE}-blog-post.md
echo "layout: posts" >> ${CURRENTDATE}-blog-post.md
echo "title: \"${CURRENTDATE} Weekly Blog\"" >> ${CURRENTDATE}-blog-post.md
echo "date: ${CURRENTDATE}" >> ${CURRENTDATE}-blog-post.md
echo "categories:" >> ${CURRENTDATE}-blog-post.md
echo "  - blog" >> ${CURRENTDATE}-blog-post.md
echo "tags:" >> ${CURRENTDATE}-blog-post.md
echo "  - weekly" >> ${CURRENTDATE}-blog-post.md
echo "---" >> ${CURRENTDATE}-blog-post.md


echo "{% include personal-bests.md %}" >> ${CURRENTDATE}-blog-post.md
echo "{% include goals.md %}" >> ${CURRENTDATE}-blog-post.md
echo "{% include upcoming-events.md %}" >> ${CURRENTDATE}-blog-post.md
