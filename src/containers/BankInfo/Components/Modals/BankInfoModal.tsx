//TODO: mapStateToProps KONTROL EDİLECEK!
import { Button, Col, Form, Icon, Input, Modal, Popconfirm, Row, Table } from 'antd';
import { FormComponentProps } from 'antd/lib/form';
import 'antd/lib/timeline/style/index.css';
import React, { Component } from 'react';
import { connect } from 'react-redux';
import { Dispatch } from 'redux';
import { BankInfoTypeModel } from '../../../../common/models';
import { addBankInfoTableRequest } from '../../actions';
import { BankInfoState } from '../../types';

const columns = [
  {
    key: 'operasyon',
    title: 'Operasyon',
    render: (text, record) => (
      <Popconfirm title="Seçili Kayıt Silinecek?" onConfirm={() => console.log('')}>
        Sil
      </Popconfirm>
    )
  },
  {
    key: 'bankName',
    title: 'Banka Adı',
    dataIndex: 'bankName'
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
    dataIndex: 'accountCode',
    key: 'accountCode'
  },
  {
    title: 'Hesap Türü',
    dataIndex: 'accountType',
    key: 'accountType'
  },
  {
    title: 'Iban',
    dataIndex: 'iban',
    key: 'iban'
  }
];

interface IState {
  bankInfoData: Array<BankInfoTypeModel>;
}

interface IProps {
  open: boolean;
  close: () => void;
}

interface IPropsFromDispatch {
  addBankInfoTableRequest: typeof addBankInfoTableRequest;
}

type AllProps = IProps & FormComponentProps & IPropsFromDispatch & IState;

class BankInfoModal extends Component<AllProps> {
  addBankInfo = () => {
    this.props.form.validateFields((errors: any, values: BankInfoTypeModel) => {
      if (errors === null) {
        this.props.addBankInfoTableRequest(values);
      }
    });
  };

  render() {
    const { getFieldDecorator } = this.props.form;
    return (
      <Modal
        title="Banka Bilgileri"
        onCancel={() => this.props.close()}
        width={1024}
        visible={this.props.open}
        footer={[
          <>
            <Button key="kaydet" type="primary" icon="check" onClick={() => this.props.close()}>
              KAYDET
            </Button>
            <Button key="kapat" type="danger" icon="close" onClick={() => this.props.close()}>
              KAPAT
            </Button>
          </>
        ]}
      >
        <React.Fragment>
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
                  })(
                    <Input prefix={<Icon type="branches" style={{ color: 'rgba(0,0,0,.25)' }} />} placeholder="Şube" />
                  )}
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
                  {getFieldDecorator('accountCode', {
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
                  {getFieldDecorator('iban', {
                    rules: [{ required: true, message: 'IBAN Girilmesi zorunludur!' }]
                  })(
                    <Input prefix={<Icon type="file-text" style={{ color: 'rgba(0,0,0,.25)' }} />} placeholder="IBAN" />
                  )}
                </Form.Item>
              </Col>
            </Row>
            <Form.Item>
              <Button type="primary" htmlType="submit" className="login-form-button" onClick={() => this.addBankInfo()}>
                Ekle
              </Button>
            </Form.Item>
          </Form>
          <Table columns={columns} dataSource={this.props.bankInfoData} />
        </React.Fragment>
      </Modal>
    );
  }
}

const WrappedForm = Form.create<AllProps>()(BankInfoModal);

const mapStateToProps = (state: BankInfoState) => ({
  bankInfoData: state.bankInfoData,
  aa: console.log('state', state)
});

const mapDispatchToProps = (dispatch: Dispatch) => ({
  addBankInfoTableRequest: (params: BankInfoTypeModel) => dispatch(addBankInfoTableRequest(params))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(WrappedForm);
