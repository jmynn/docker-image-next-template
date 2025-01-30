#!/bin/bash
echo "import { FunctionComponent, ReactNode } from 'react';
import styles from './index.module.css';

type Props = {
	children: ReactNode;
};

const $1: FunctionComponent<Props> = ({ children }): ReactNode => {
return <div className={styles.$1}>{children}</div>;
};

export default $1;" > index.tsx