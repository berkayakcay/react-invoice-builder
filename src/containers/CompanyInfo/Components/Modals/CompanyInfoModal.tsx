import {
  faArchway,
  faBuilding,
  faCity,
  faDoorOpen,
  faEnvelope,
  faFax,
  faGlobe,
  faGlobeEurope,
  faListOl,
  faMailBulk,
  faMapMarkerAlt,
  faPhoneVolume,
  faUserPlus
} from '@fortawesome/free-solid-svg-icons';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { Button, Col, Form, Input, message, Modal, Row, Select } from 'antd';
import { FormComponentProps } from 'antd/lib/form';
import React, { Component } from 'react';
import { connect } from 'react-redux';
import { Dispatch } from 'redux';
import { countryOption } from '../../../../common/defaultOptions';
import { CompanyInfoModel } from '../../../../common/models';
import { selectAfter, selectBefore } from '../../../../components/Options';
import { updateCompanyInfo } from '../../actions';
import { CompanyInfoStateType } from '../../types';

interface IProps {
  open: boolean;
  close: () => void;
  companyInfo: CompanyInfoModel;
}

interface IPropsFromDispatch {
  updateCompanyInfo: typeof updateCompanyInfo;
}
type AllProps = IProps & IPropsFromDispatch & FormComponentProps;

class CompanyInfoModal extends Component<AllProps> {
  onClickUpdateCompanyInfo = () => {
    this.props.form.validateFields((errors: any, values: CompanyInfoModel) => {
      if (errors === null) {
        this.props.updateCompanyInfo(values);
        message.success('Kayıt Başarı İle Eklendi!', 2);
        this.props.close();
      }
    });
  };

  render() {
    const { getFieldDecorator } = this.props.form;
    return (
      <Modal
        title="Firma Bilgileri"
        onCancel={() => this.props.close()}
        width={1024}
        visible={this.props.open}
        footer={[
          <>
            <Button key="ok" type="primary" icon="check" onClick={() => this.onClickUpdateCompanyInfo()}>
              KAYDET
            </Button>
          </>
        ]}
      >
        <Form>
          <Row>
            <Col span={12} style={{ paddingRight: 10 }}>
              <Form.Item hasFeedback>
                {getFieldDecorator('name', {
                  rules: [
                    {
                      required: true,
                      message: 'Burası Girilmesi Zorunlu Alandır!'
                    }
                  ]
                })(
                  <Input
                    prefix={<FontAwesomeIcon style={{ color: '#ced4da' }} icon={faUserPlus} />}
                    placeholder="Firma Ünvan"
                  />
                )}
              </Form.Item>
              <Row>
                <Col style={{ paddingRight: 5 }} span={12}>
                  <Form.Item hasFeedback>
                    {getFieldDecorator('registerNumber', {
                      rules: [
                        {
                          min: 10,
                          max: 11,
                          required: true,
                          message: 'TCKN / VKN Alanı En Az 10 En Çok 11 Haneli olmalıdır!'
                        }
                      ]
                    })(
                      <Input
                        prefix={<FontAwesomeIcon style={{ color: '#ced4da' }} icon={faListOl} />}
                        placeholder="Firma VKN"
                      />
                    )}
                  </Form.Item>
                </Col>
                <Col style={{ paddingLeft: 5 }} span={12}>
                  <Form.Item hasFeedback>
                    {getFieldDecorator('taxOffice', {
                      rules: [
                        {
                          required: false
                        }
                      ]
                    })(
                      <Input
                        prefix={<FontAwesomeIcon style={{ color: '#ced4da' }} icon={faBuilding} />}
                        placeholder="Vergi Dairesi"
                      />
                    )}
                  </Form.Item>
                </Col>
              </Row>
              <Row>
                <Col style={{ paddingRight: 5 }} span={12}>
                  <Form.Item hasFeedback>
                    {getFieldDecorator('tradeRegistryNumber', {
                      rules: [
                        {
                          required: false
                        }
                      ]
                    })(
                      <Input
                        prefix={<FontAwesomeIcon style={{ color: '#ced4da' }} icon={faListOl} />}
                        placeholder="Ticaret Sicil No"
                      />
                    )}
                  </Form.Item>
                </Col>
                <Col style={{ paddingLeft: 5 }} span={12}>
                  <Form.Item hasFeedback>
                    {getFieldDecorator('mersisNumber', {
                      rules: [
                        {
                          required: false
                        }
                      ]
                    })(
                      <Input
                        prefix={<FontAwesomeIcon style={{ color: '#ced4da' }} icon={faListOl} />}
                        placeholder="Mersis No"
                      />
                    )}
                  </Form.Item>
                </Col>
              </Row>
              <Row>
                <Col style={{ paddingRight: 5 }} span={12}>
                  <Form.Item hasFeedback>
                    {getFieldDecorator('phone', {
                      rules: [
                        {
                          required: false
                        }
                      ]
                    })(
                      <Input
                        prefix={<FontAwesomeIcon style={{ color: '#ced4da' }} icon={faPhoneVolume} />}
                        placeholder="Telefon"
                      />
                    )}
                  </Form.Item>
                </Col>
                <Col style={{ paddingLeft: 5 }} span={12}>
                  <Form.Item hasFeedback>
                    {getFieldDecorator('fax', {
                      rules: [
                        {
                          required: false
                        }
                      ]
                    })(
                      <Input prefix={<FontAwesomeIcon style={{ color: '#ced4da' }} icon={faFax} />} placeholder="Fax" />
                    )}
                  </Form.Item>
                </Col>
              </Row>
            </Col>
            <Col span={12} style={{ paddingLeft: 10 }}>
              <Form.Item hasFeedback>
                {getFieldDecorator('address', {
                  rules: [{ required: false }]
                })(
                  <Input
                    prefix={<FontAwesomeIcon style={{ color: '#ced4da' }} icon={faMapMarkerAlt} />}
                    placeholder="Adres"
                  />
                )}
              </Form.Item>
              <Row>
                <Col style={{ paddingRight: 5 }} span={8}>
                  <Form.Item hasFeedback>
                    {getFieldDecorator('district', {
                      rules: [
                        {
                          required: true,
                          message: 'Burası Girilmesi Zorunlu Alandır!'
                        }
                      ]
                    })(
                      <Input
                        prefix={<FontAwesomeIcon style={{ color: '#ced4da' }} icon={faArchway} />}
                        placeholder="Mahalle/Semt/İlçe"
                      />
                    )}
                  </Form.Item>
                </Col>
                <Col style={{ paddingRight: 5, paddingLeft: 5 }} span={8}>
                  <Form.Item hasFeedback>
                    {getFieldDecorator('city', {
                      rules: [
                        {
                          required: true,
                          message: 'Burası Girilmesi Zorunlu Alandır!'
                        }
                      ]
                    })(
                      <Input
                        prefix={<FontAwesomeIcon style={{ color: '#ced4da' }} icon={faCity} />}
                        placeholder="Şehir"
                      />
                    )}
                  </Form.Item>
                </Col>
                <Col style={{ paddingLeft: 5 }} span={8}>
                  <Form.Item hasFeedback>
                    {getFieldDecorator('country', {
                      rules: [
                        {
                          required: true,
                          message: 'Ülke Girilmesi Zorunludur!'
                        }
                      ]
                    })(
                      <Select
                        suffixIcon={<FontAwesomeIcon style={{ color: '#ced4da' }} icon={faGlobeEurope} />}
                        placeholder="Ülke"
                        style={{ width: '100%' }}
                      >
                        {countryOption.map(option => (
                          <Select.Option key={option.key} value={option.value}>
                            {option.value}
                          </Select.Option>
                        ))}
                      </Select>
                    )}
                  </Form.Item>
                </Col>
              </Row>
              <Row>
                <Col style={{ paddingRight: 5 }} span={8}>
                  <Form.Item hasFeedback>
                    {getFieldDecorator('postalCode', {
                      rules: [
                        {
                          required: false
                        }
                      ]
                    })(
                      <Input
                        prefix={<FontAwesomeIcon style={{ color: '#ced4da' }} icon={faMailBulk} />}
                        placeholder="Posta Kodu"
                      />
                    )}
                  </Form.Item>
                </Col>
                <Col style={{ paddingLeft: 5, paddingRight: 5 }} span={8}>
                  <Form.Item hasFeedback>
                    {getFieldDecorator('buildingNumber', {
                      rules: [
                        {
                          required: false
                        }
                      ]
                    })(
                      <Input
                        prefix={<FontAwesomeIcon style={{ color: '#ced4da' }} icon={faBuilding} />}
                        placeholder="Bina No"
                      />
                    )}
                  </Form.Item>
                </Col>
                <Col style={{ paddingLeft: 5 }} span={8}>
                  <Form.Item hasFeedback>
                    {getFieldDecorator('doorNumber', {
                      rules: [
                        {
                          required: false
                        }
                      ]
                    })(
                      <Input
                        prefix={<FontAwesomeIcon style={{ color: '#ced4da' }} icon={faDoorOpen} />}
                        placeholder="Kapı No"
                      />
                    )}
                  </Form.Item>
                </Col>
              </Row>
              <Row>
                <Col>
                  <Form.Item hasFeedback>
                    {getFieldDecorator('mail', {
                      rules: [
                        {
                          required: false,
                          type: 'email',
                          message: "E-Mail adresi '@' İşareti içermelidir!"
                        }
                      ]
                    })(
                      <Input
                        prefix={<FontAwesomeIcon style={{ color: '#ced4da' }} icon={faEnvelope} />}
                        placeholder="Mail Adresi"
                      />
                    )}
                  </Form.Item>
                </Col>
              </Row>
              <Row>
                <Col>
                  <Form.Item hasFeedback>
                    {getFieldDecorator('webSite', {
                      rules: [
                        {
                          required: false
                        }
                      ]
                    })(
                      <Input
                        addonBefore={selectBefore}
                        addonAfter={selectAfter}
                        prefix={<FontAwesomeIcon style={{ color: '#ced4da' }} icon={faGlobe} />}
                        placeholder="İnternet Sitesi"
                      />
                    )}
                  </Form.Item>
                </Col>
              </Row>
            </Col>
          </Row>
        </Form>
      </Modal>
    );
  }
}

const WrappedCompanyForm = Form.create<AllProps>()(CompanyInfoModal);

const mapStateToProps = ({ companyInfo }: CompanyInfoStateType) => ({
  companyInfo: companyInfo.info
});

const mapDispatchToProps = (dispatch: Dispatch) => ({
  updateCompanyInfo: (params: CompanyInfoModel) => dispatch(updateCompanyInfo(params))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(WrappedCompanyForm);
