import { Form, Icon, Input } from 'antd';
import React, { PureComponent } from 'react';

export default class InvoiceNotting extends PureComponent {
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
            placeholder="Not / Uyarı"
          />
        </Form.Item>
      </Form>
    );
  }
}
