import type {ReactNode} from 'react';
import clsx from 'clsx';
import styles from './styles.module.css';

type HttpMethod = 'GET' | 'POST' | 'PUT' | 'PATCH' | 'DELETE';

type Props = {
  method: HttpMethod;
  url: string;
};

export default function HttpEndpoint({method, url}: Props): ReactNode {
  return (
    <p className={styles.endpoint}>
      <span className={clsx('api-method-badge', `api-method-badge--${method.toLowerCase()}`)}>
        {method}
      </span>
      <code className={styles.url}>{url}</code>
    </p>
  );
}
