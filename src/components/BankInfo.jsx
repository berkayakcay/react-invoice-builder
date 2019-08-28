import { Button, Col, Form, Icon, Input, Row, Table, Popconfirm } from 'antd';
import React, { Component } from 'react';

const columns = [
    {
      key: 'operasyon',
      title: 'Operasyon',
      render: (text, record) => (
        <Popconfirm title="Seçili Kayıt Silinecek?" onConfirm={() => this.handleDelete(record.key)}>
          Sil
        </Popconfirm>
      )
    },
  {
    key: 'bankName',
    title: 'Banka Adı',
    dataIndex: 'bankName',
  },
  {
    title: 'Şube',
    dataIndex: 'branch',
    key: 'branch'
  },
  {
    title: 'Şube Kodu',
    dataIndex: 'branchCode',
    key: 'branchCode'
  },
  {
    title: 'Hesap No',
    dataIndex: 'accountNo',
    key: 'accountNo'
  },
  {
    title: 'Hesap Türü',
    dataIndex: 'accountType',
    key: 'accountType'
  },
  {
    title: 'Iban',
    dataIndex: 'ibanNo',
    key: 'ibanNo'
  }
];

class BankInfo extends Component {
  constructor(props) {
    super(props);
    this.state = {
      value: '',
      data: []
    };
  }

  //TODO handleDelete Silme işlemi kontrol edilecek
  handleDelete = key => {
    const data = [...this.state.data];
    this.setState({ data: data.filter(item => item.key !== key) });
  };

  addBankInfo = () => {
    this.props.form.validateFields((errors, values) => {
      if (!errors) {
        this.state.data.push(values);
      }
    });
    this.props.form.resetFields();
  };

  render() {
    const { getFieldDecorator } = this.props.form;
    return (
      <div>
        <Form className="login-form">
          <Row gutter={16} type="flex">
            <Col span={8}>
              <Form.Item>
                {getFieldDecorator('bankName', {
                  rules: [{ required: true, message: 'Banka Adı Zorunlu Alandır!' }]
                })(
                  <Input prefix={<Icon type="bank" style={{ color: 'rgba(0,0,0,.25)' }} />} placeholder="Banka Adı" />
                )}
              </Form.Item>
            </Col>
            <Col span={8}>
              <Form.Item>
                {getFieldDecorator('branch', {
                  rules: [{ required: false }]
                })(<Input prefix={<Icon type="branches" style={{ color: 'rgba(0,0,0,.25)' }} />} placeholder="Şube" />)}
              </Form.Item>
            </Col>
            <Col span={8}>
              <Form.Item>
                {getFieldDecorator('branchCode', {
                  rules: [{ required: false }]
                })(
                  <Input prefix={<Icon type="code" style={{ color: 'rgba(0,0,0,.25)' }} />} placeholder="Şube Kodu" />
                )}
              </Form.Item>
            </Col>
          </Row>
          <Row gutter={16} type="flex">
            <Col span={8}>
              <Form.Item>
                {getFieldDecorator('accountNo', {
                  rules: [{ required: false }]
                })(
                  <Input
                    prefix={<Icon type="account-book" style={{ color: 'rgba(0,0,0,.25)' }} />}
                    placeholder="Hesap No"
                  />
                )}
              </Form.Item>
            </Col>
            <Col span={8}>
              <Form.Item>
                {getFieldDecorator('accountType', {
                  rules: [{ required: false }]
                })(
                  <Input
                    prefix={<Icon type="radius-setting" style={{ color: 'rgba(0,0,0,.25)' }} />}
                    placeholder="Hesap Türü"
                  />
                )}
              </Form.Item>
            </Col>
            <Col span={8}>
              <Form.Item>
                {getFieldDecorator('ibanNo', {
                  rules: [{ required: true, message: 'IBAN Girilmesi zorunludur!' }]
                })(
                  <Input prefix={<Icon type="file-text" style={{ color: 'rgba(0,0,0,.25)' }} />} placeholder="IBAN" />
                )}
              </Form.Item>
            </Col>
          </Row>
          <Form.Item>
            <Button type="primary" htmlType="submit" className="login-form-button" onClick={this.addBankInfo}>
              Ekle
            </Button>
          </Form.Item>
        </Form>
        <Table
          columns={columns}
          bordered
          dataSource={this.state.data}
          scroll={{ y: 200, x: 750 }}
        />
      </div>
    );
  }
}

const WrappedNormalLoginForm = Form.create({ name: 'normal_login' })(BankInfo);

export default WrappedNormalLoginForm;
