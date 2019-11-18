import { Avatar, Button, Col, Form, Icon, Input, Modal, Popconfirm, Row, Select, Table } from 'antd';
import { FormComponentProps } from 'antd/lib/form';
import 'antd/lib/timeline/style/index.css';
import React, { Component } from 'react';
import { connect } from 'react-redux';
import { Dispatch } from 'redux';
import { BankInfoModel } from '../../../../common/models';
import { deleteBankInfo, updateBankInfo } from '../../actions';
import Arabia from '../../CountryLogo/arabia.png';
import Canada from '../../CountryLogo/canada.png';
import China from '../../CountryLogo/china.png';
import England from '../../CountryLogo/england.png';
import Euro from '../../CountryLogo/euro.png';
import India from '../../CountryLogo/india.png';
import Japan from '../../CountryLogo/japan.png';
import Russia from '../../CountryLogo/russia.png';
import Switzerland from '../../CountryLogo/switzerland.jpg';
import Turkey from '../../CountryLogo/turkey.png';
import Uae from '../../CountryLogo/uae.jpg';
import UnitedStates from '../../CountryLogo/unitedStates.png';
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

const { Option } = Select;

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
                <Form.Item hasFeedback>
                  {getFieldDecorator('bankName', {
                    rules: [{ required: true, message: 'Banka Adı Zorunlu Alandır!' }]
                  })(
                    <Input prefix={<Icon type="bank" style={{ color: 'rgba(0,0,0,.25)' }} />} placeholder="Banka Adı" />
                  )}
                </Form.Item>
              </Col>
              <Col span={8}>
                <Form.Item hasFeedback>
                  {getFieldDecorator('branch', {
                    rules: [{ required: true, message: 'Banka Adı Zorunlu Alandır!' }]
                  })(
                    <Input prefix={<Icon type="branches" style={{ color: 'rgba(0,0,0,.25)' }} />} placeholder="Şube" />
                  )}
                </Form.Item>
              </Col>
              <Col span={8}>
                <Form.Item hasFeedback>
                  {getFieldDecorator('branchCode', {
                    rules: [{ required: true, message: 'Banka Adı Zorunlu Alandır!' }]
                  })(
                    <Input prefix={<Icon type="code" style={{ color: 'rgba(0,0,0,.25)' }} />} placeholder="Şube Kodu" />
                  )}
                </Form.Item>
              </Col>
            </Row>
            <Row gutter={16} type="flex">
              <Col span={8}>
                <Form.Item hasFeedback>
                  {getFieldDecorator('accountCode', {
                    rules: [{ required: true, message: 'Banka Adı Zorunlu Alandır!' }]
                  })(
                    <Input
                      prefix={<Icon type="account-book" style={{ color: 'rgba(0,0,0,.25)' }} />}
                      placeholder="Hesap No"
                    />
                  )}
                </Form.Item>
              </Col>
              <Col span={8}>
                <Form.Item hasFeedback>
                  {getFieldDecorator('accountType', {
                    rules: [{ required: true, message: 'Banka Adı Zorunlu Alandır!' }]
                  })(
                    <Select showSearch placeholder="Hesap Türü" optionFilterProp="children">
                      <Option value="TL">
                        <Avatar shape="square" size={20} src={Turkey} /> TL - Türk Lirası
                      </Option>
                      <Option value="USD">
                        <Avatar shape="square" size={20} src={UnitedStates} /> USD - Amerikan Doları
                      </Option>
                      <Option value="EUR">
                        <Avatar shape="square" size={20} src={Euro} /> EUR - Euro
                      </Option>
                      <Option value="GBP">
                        <Avatar shape="square" size={20} src={England} /> GBP - İngiliz Sterlini
                      </Option>
                      <Option value="CHF">
                        <Avatar shape="square" size={20} src={Switzerland} /> CHF - İsviçre Frangı
                      </Option>
                      <Option value="CAD">
                        <Avatar shape="square" size={20} src={Canada} /> CAD - Kanada Doları
                      </Option>
                      <Option value="RUB">
                        <Avatar shape="square" size={20} src={Russia} /> RUB - Rus Rublesi
                      </Option>
                      <Option value="JPY">
                        <Avatar shape="square" size={20} src={Japan} /> JPY - 100 Japon Yeni
                      </Option>
                      <Option value="SAR">
                        <Avatar shape="square" size={20} src={Arabia} /> SAR - S. Arabistan Riyali
                      </Option>
                      <Option value="INR">
                        <Avatar shape="square" size={20} src={India} /> INR - Hindistan Rupisi
                      </Option>
                      <Option value="CNY">
                        <Avatar shape="square" size={20} src={China} /> CNY - Çin Yuanı
                      </Option>
                      <Option value="AED">
                        <Avatar shape="square" size={20} src={Uae} /> AED - B.A.E. Dirhemi
                      </Option>
                    </Select>
                  )}
                </Form.Item>
              </Col>
              <Col span={8}>
                <Form.Item hasFeedback>
                  {getFieldDecorator('iban', {
                    rules: [{ required: true, message: 'IBAN Girilmesi zorunludur!' }]
                  })(
                    <Input prefix={<Icon type="file-text" style={{ color: 'rgba(0,0,0,.25)' }} />} placeholder="IBAN" />
                  )}
                </Form.Item>
              </Col>
            </Row>
            <Row gutter={16} type="flex">
              <Col span={24}>
                <Form.Item hasFeedback>
                  {getFieldDecorator('accountName', {
                    rules: [{ required: true, message: 'Banka Adı Zorunlu Alandır!' }]
                  })(
                    <Input prefix={<Icon type="user" style={{ color: 'rgba(0,0,0,.25)' }} />} placeholder="Hesap Adı" />
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
                render: (text, record: BankInfoModel) => (
                  <Popconfirm title="Seçili Kayıt Silinecek?" onConfirm={() => this.props.deleteBankInfo(record)}>
                    <Icon type="delete" title="Sil" style={{ color: '#ff2a00' }} /> <span>Sil</span>
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
                key: 'accountType',
                width: 30
              },
              {
                title: 'Iban',
                dataIndex: 'iban',
                key: 'iban'
              },
              {
                title: 'Hesap Adı',
                dataIndex: 'accountName',
                key: 'accountName',
                width: 200
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

export default connect(mapStateToProps, mapDispatchToProps)(WrappedForm);
