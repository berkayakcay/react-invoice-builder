import { Form, Icon, Input } from "antd";
import React, { PureComponent } from "react";

export default class CompanyAddInfo extends PureComponent {
  render() {
    return (
      <Form>
        <Form.Item>
          <Input placeholder="Vergi Dairesi" />
        </Form.Item>
        <Form.Item>
          <Input placeholder="Ticaret Sicil No" />
        </Form.Item>
        <Form.Item>
          <Input placeholder="Mersis No" />
        </Form.Item>
        <Form.Item>
          <Input placeholder="Telefon" />
        </Form.Item>
        <Form.Item>
          <Input placeholder="Fax" />
        </Form.Item>
        <Form.Item>
          <Input placeholder="E-Posta" />
        </Form.Item>
        <Form.Item>
          <Input placeholder="İnternet Sitesi" />
        </Form.Item>
      </Form>
    );
  }
}
