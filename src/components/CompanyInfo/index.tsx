import { Form, Icon, Input, Modal } from "antd";
import React from "react";
import { FormComponentProps } from "antd/lib/form";

interface IProps {}

interface IDispatches {}

type AllProps = IProps & IDispatches & FormComponentProps;
class CompanyInfo extends React.Component<AllProps> {
  render() {
    const { getFieldDecorator } = this.props.form;
    return (
      <div>
        <Modal title="Firma Bilgileri">
          <Form className="login-form">
            <Form.Item>
              {getFieldDecorator("name", {
                rules: [
                  {
                    required: true,
                    message: "Burası Girilmesi Zorunlu Alandır!"
                  }
                ]
              })(
                <Input
                  prefix={<Icon type="user" />}
                  placeholder="Firma Ünvan"
                />
              )}
            </Form.Item>
            <Form.Item>
              {getFieldDecorator("registerNumber", {
                rules: [
                  {
                    required: true,
                    message: "Burası Girilmesi Zorunlu Alandır!"
                  }
                ]
              })(
                <Input prefix={<Icon type="user" />} placeholder="Firma VKN" />
              )}
            </Form.Item>
            <Form.Item>
              {getFieldDecorator("address", {
                rules: [{ required: false }]
              })(<Input prefix={<Icon type="user" />} placeholder="Adres" />)}
            </Form.Item>
            <Form.Item>
              {getFieldDecorator("district", {
                rules: [
                  {
                    required: true,
                    message: "Burası Girilmesi Zorunlu Alandır!"
                  }
                ]
              })(<Input prefix={<Icon type="user" />} placeholder="İl" />)}
            </Form.Item>
            <Form.Item>
              {getFieldDecorator("city", {
                rules: [
                  {
                    required: true,
                    message: "Burası Girilmesi Zorunlu Alandır!"
                  }
                ]
              })(<Input prefix={<Icon type="user" />} placeholder="İlçe" />)}
            </Form.Item>
          </Form>
        </Modal>
      </div>
    );
  }
}

const WrappedCompanyForm = Form.create<AllProps>()(CompanyInfo);

export default WrappedCompanyForm;
