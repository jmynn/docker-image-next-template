#!/bin/bash
echo "import styles from './index.module.css';
import { ReactNode } from 'react';

const $1 = (): ReactNode => {
  return <div className={styles.$( echo "$1" | awk 'BEGIN{OFS=""};{for(j=1;j<=NF;j++){ if(j==1){$j=tolower($j)} else {$j=toupper(substr($j,1,1)) tolower(substr($j,2)) }}}1')}></div>;
};

export default $1;" > index.tsx