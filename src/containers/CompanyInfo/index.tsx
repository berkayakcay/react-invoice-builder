// Importing types from the API library along with other exports
import {
  faArchway,
  faBuilding,
  faCity,
  faDoorOpen,
  faEnvelope,
  faFax,
  faGlobeEurope,
  faListOl,
  faMailBulk,
  faMapMarkerAlt,
  faPhoneVolume,
  faUserPlus
} from '@fortawesome/free-solid-svg-icons';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { Col, Form, Input, Row, Select } from 'antd';
import { FormComponentProps } from 'antd/lib/form';
import React from 'react';
import { countryOption } from '../../common/defaultOptions';
import InternetAddress from '../../components/InternetAddress';

interface IProps {}

interface IDispatches {}

type AllProps = IProps & IDispatches & FormComponentProps;

class CompanyInfo extends React.Component<AllProps> {
  render() {
    const { getFieldDecorator } = this.props.form;
    return (
      <React.Fragment>
        <Form>
          <Row>
            <Col span={12} style={{ paddingRight: 10 }}>
              <Form.Item hasFeedback>
                {getFieldDecorator('companyName', {
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
                    {getFieldDecorator('ticaretSicilNo', {
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
                    {getFieldDecorator('mersisNo', {
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
                    {getFieldDecorator('mahalle', {
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
                    {getFieldDecorator('district', {
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
                    {getFieldDecorator('ulke', {
                      rules: [{ required: true, message: 'Ülke Girilmesi Zorunludur!' }]
                    })(
                      <Select
                        suffixIcon={<FontAwesomeIcon style={{ color: '#ced4da' }} icon={faGlobeEurope} />}
                        placeholder="Ülke"
                        defaultValue={countryOption}
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
                    {getFieldDecorator('postaKodu', {
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
                    {getFieldDecorator('binaNo', {
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
                    {getFieldDecorator('kapiNo', {
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
                    {getFieldDecorator('eMail', {
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
                    {getFieldDecorator('internetSitesi', {
                      rules: [
                        {
                          required: false
                        }
                      ]
                    })(<InternetAddress />)}
                  </Form.Item>
                </Col>
              </Row>
            </Col>
          </Row>
        </Form>
      </React.Fragment>
    );
  }
}

const WrappedCompanyForm = Form.create<AllProps>()(CompanyInfo);

export default WrappedCompanyForm;
