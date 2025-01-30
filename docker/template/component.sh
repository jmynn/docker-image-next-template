#!/bin/bash
echo "import styles from './index.module.css';
import { ReactNode } from 'react';

const $1 = (): ReactNode => {
  return <div className={styles.$1}></div>;
};

export default $1;" > index.tsx