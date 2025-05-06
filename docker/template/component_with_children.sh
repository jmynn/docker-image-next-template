#!/bin/bash
echo "import { FunctionComponent, ReactNode } from 'react';
import styles from './index.module.css';

type Props = {
	children: ReactNode;
};

const $1: FunctionComponent<Props> = ({ children }): ReactNode => {
return <div className={styles.$( echo "$1" | awk 'BEGIN{OFS=""};{for(j=1;j<=NF;j++){ if(j==1){$j=tolower($j)} else {$j=toupper(substr($j,1,1)) tolower(substr($j,2)) }}}1')}>{children}</div>;
};

export default $1;" > index.tsx