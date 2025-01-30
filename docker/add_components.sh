#!/bin/bash

STYLE_CONTAINER=".container {
    width: var(--container);
    margin: 0 auto;
}"
STYLE_WRAPPER=".wrapper {
    display: flex;
    flex-direction: column;
    align-items: center;
    height: inherit;
    width: 100%;
}"
cd ../.. 
# /scripts
mkdir -p "components/Container/output" 
cd "./components/Container/output" 
# /scripts/components/Container/output
bash /scripts/template/component_with_children.sh "Container"
bash /scripts/template/style.sh $STYLE_CONTAINER

cd ~
# /root
cd ../scripts/components
# /scripts/components
mkdir -p "Wrapper/output" 
cd "./Wrapper/output" 
# /scripts/components/Wrapper/output
bash /scripts/template/component_with_children.sh "Wrapper"
bash /scripts/template/style.sh $STYLE_WRAPPER

cd ~
# /root
cd ../scripts/components
# /scripts/components
mkdir -p "Layout/output" 
cd "./Layout/output" 
# /scripts/components/Layout/output
bash /scripts/template/layout_root.sh

cd ~
# /root
cd ../scripts/components
# /scripts/components
mkdir -p "Main/output" 
cd "./Main/output" 
# /scripts/components/Main/output
bash /scripts/template/component.sh "Main"
bash /scripts/template/style.sh 

cd ~
# /root
cd ../scripts/components
# /scripts/components
mkdir -p "Page/output" 
cd "./Page/output" 
# /scripts/components/Page/output
bash /scripts/template/page_root.sh 
