#!/bin/bash

STYLE_CONTAINER=".container{width:var(--container);margin:0 auto;}"
STYLE_WRAPPER=".wrapper{display:flex;flex-direction:column;align-items:center;height:inherit;width:100%;}"

cd ..
# /output
mkdir -p "components/Container" 
cd "./components/Container" 
# /output/components/Container
bash /scripts/template/component_with_children.sh "Container"
bash /scripts/template/style.sh "$STYLE_CONTAINER"

cd ~
# /root
cd ../output/components
# /output/components
mkdir -p "Wrapper" 
cd "./Wrapper" 
# /output/components/Wrapper
bash /scripts/template/component_with_children.sh "Wrapper"
bash /scripts/template/style.sh "$STYLE_WRAPPER"

cd ~
# /root
cd ../output/components
# /output/components
mkdir -p "Layout" 
cd "./Layout" 
# /output/components/Layout
bash /scripts/template/layout_root.sh

cd ~
# /root
cd ../output/components
# /output/components
mkdir -p "Main" 
cd "./Main" 
# /output/components/Main
bash /scripts/template/component.sh "Main"
bash /scripts/template/style.sh 

cd ~
# /root
cd ../output/components
# /output/components
mkdir -p "Page" 
cd "./Page" 
# /output/components/Page/output
bash /scripts/template/page_root.sh 
