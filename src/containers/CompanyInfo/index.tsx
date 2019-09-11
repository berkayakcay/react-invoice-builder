import { Form, Input } from "antd";
import React from "react";
import { FormComponentProps } from "antd/lib/form";

interface IProps {}

interface IDispatches {}

type AllProps = IProps & IDispatches & FormComponentProps;

class CompanyInfo extends React.Component<AllProps> {
  render() {
    const { getFieldDecorator } = this.props.form;
    return (
      <React.Fragment>
        <Form>
          <Form.Item>
            {getFieldDecorator("name", {
              rules: [
                {
                  required: true,
                  message: "Burası Girilmesi Zorunlu Alandır!"
                }
              ]
            })(<Input placeholder="Firma Ünvan" />)}
          </Form.Item>
          <Form.Item>
            {getFieldDecorator("registerNumber", {
              rules: [
                {
                  required: true,
                  message: "Burası Girilmesi Zorunlu Alandır!"
                }
              ]
            })(<Input placeholder="Firma VKN" />)}
          </Form.Item>
          <Form.Item>
            {getFieldDecorator("address", {
              rules: [{ required: false }]
            })(<Input placeholder="Adres" />)}
          </Form.Item>
          <Form.Item>
            {getFieldDecorator("district", {
              rules: [
                {
                  required: true,
                  message: "Burası Girilmesi Zorunlu Alandır!"
                }
              ]
            })(<Input placeholder="İl" />)}
          </Form.Item>
          <Form.Item>
            {getFieldDecorator("city", {
              rules: [
                {
                  required: true,
                  message: "Burası Girilmesi Zorunlu Alandır!"
                }
              ]
            })(<Input placeholder="İlçe" />)}
          </Form.Item>
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
      </React.Fragment>
    );
  }
}

const WrappedCompanyForm = Form.create<AllProps>()(CompanyInfo);

export default WrappedCompanyForm;
