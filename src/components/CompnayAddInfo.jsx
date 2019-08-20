import { Form, Icon, Input } from 'antd';
import React, { PureComponent } from 'react';

export default class CompanyAddInfo extends PureComponent {
  render() {
    return (
      <Form className="login-form">
        <Form.Item>
          <Input
            prefix={
              <Icon
                type="user"
                style={{
                  color: 'rgba(0,0,0,.25)'
                }}
              />
            }
            placeholder="Vergi Dairesi"
          />
        </Form.Item>{' '}
        <Form.Item>
          <Input
            prefix={
              <Icon
                type="user"
                style={{
                  color: 'rgba(0,0,0,.25)'
                }}
              />
            }
            placeholder="Ticaret Sicil No"
          />
        </Form.Item>{' '}
        <Form.Item>
          <Input
            prefix={
              <Icon
                type="user"
                style={{
                  color: 'rgba(0,0,0,.25)'
                }}
              />
            }
            placeholder="Mersis No"
          />
        </Form.Item>{' '}
        <Form.Item>
          <Input
            prefix={
              <Icon
                type="user"
                style={{
                  color: 'rgba(0,0,0,.25)'
                }}
              />
            }
            placeholder="Telefon"
          />
        </Form.Item>{' '}
        <Form.Item>
          <Input
            prefix={
              <Icon
                type="user"
                style={{
                  color: 'rgba(0,0,0,.25)'
                }}
              />
            }
            placeholder="Fax"
          />
        </Form.Item>
        <Form.Item>
          <Input
            prefix={
              <Icon
                type="user"
                style={{
                  color: 'rgba(0,0,0,.25)'
                }}
              />
            }
            placeholder="E-Posta"
          />
        </Form.Item>
        <Form.Item>
          <Input
            prefix={
              <Icon
                type="user"
                style={{
                  color: 'rgba(0,0,0,.25)'
                }}
              />
            }
            placeholder="İnternet Sitesi"
          />
        </Form.Item>
      </Form>
    );
  }
}
