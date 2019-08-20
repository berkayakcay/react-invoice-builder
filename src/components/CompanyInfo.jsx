import { Form, Icon, Input, Select } from 'antd';
import React, { PureComponent } from 'react';

const { Option } = Select;

export default class CompanyInfo extends PureComponent {
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
            placeholder="Firma Ünvan"
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
            placeholder="Firma VKN"
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
            placeholder="Adres"
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
            placeholder="İl"
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
            placeholder="İlçe"
          />
        </Form.Item>
        <Form.Item>
          <Select defaultValue="1">
            <Option value="1">E-Fature</Option>
            <Option value="2">E-Fatura / E-Arşiv</Option>
          </Select>
        </Form.Item>
      </Form>
    );
  }
}
