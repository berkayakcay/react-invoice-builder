//TODO: mapStateToProps KONTROL EDİLECEK!
import { Button, Col, Form, Icon, Input, Modal, Popconfirm, Row, Table } from 'antd';
import { FormComponentProps } from 'antd/lib/form';
import 'antd/lib/timeline/style/index.css';
import React, { Component } from 'react';
import { connect } from 'react-redux';
import { Dispatch } from 'redux';
import { BankInfoModel } from '../../../../common/models';
import { deleteBankInfo, updateBankInfo } from '../../actions';
import { BankInfoStateType } from '../../types';

interface IProps {
  open: boolean;
  close: () => void;
  list: Array<BankInfoModel>;
}

interface IPropsFromDispatch {
  updateBankInfo: typeof updateBankInfo;
  deleteBankInfo: typeof deleteBankInfo;
}

type AllProps = IProps & IPropsFromDispatch & FormComponentProps;

class BankInfoModal extends Component<AllProps> {
  addBankInfo = () => {
    this.props.form.validateFields((errors: any, values: BankInfoModel) => {
      if (errors === null) {
        this.props.updateBankInfo(values);
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
          <Button key="ok" type="primary" icon="check" onClick={() => this.props.close()}>
            TAMAM
          </Button>
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
          <Table
            columns={[
              {
                key: 'operasyon',
                title: 'Operasyon',
                render: (text, record: BankInfoModel) => (
                  <Popconfirm title="Seçili Kayıt Silinecek?" onConfirm={() => this.props.deleteBankInfo(record)}>
                    <Icon type="delete" title="Sil" style={{ color: '#ff2a00' }} /> <a>Sil</a>
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
            ]}
            pagination={false}
            dataSource={this.props.list}
          />
        </React.Fragment>
      </Modal>
    );
  }
}

const WrappedForm = Form.create<AllProps>()(BankInfoModal);

const mapStateToProps = ({ bankInfo }: BankInfoStateType) => ({
  list: bankInfo.list
});

const mapDispatchToProps = (dispatch: Dispatch) => ({
  updateBankInfo: (params: BankInfoModel) => dispatch(updateBankInfo(params)),
  deleteBankInfo: (params: BankInfoModel) => dispatch(deleteBankInfo(params))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(WrappedForm);
