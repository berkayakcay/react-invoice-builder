//TODO: mapStateToProps KONTROL EDİLECEK!
import { Button, Card, Col, Modal, Row } from 'antd';
import Meta from 'antd/lib/card/Meta';
import 'antd/lib/timeline/style/index.css';
import React, { Component } from 'react';
import { connect } from 'react-redux';
import { Dispatch } from 'redux';
import { HtmlPreviewStateType } from '../../types';
import { themeFirst } from '../Images/ThemeFirst';
import { themeFourth } from '../Images/ThemeFourth';
import { themeSecond } from '../Images/ThemeSecond';
import { themeThird } from '../Images/ThemeThird';
interface IProps {
  open: boolean;
  close: () => void;
}

type AllProps = IProps;

class HtmlPreview extends Component<AllProps> {
  render() {
    return (
      <Modal
        title="Tema Seçimi"
        onCancel={() => this.props.close()}
        width={1076}
        visible={this.props.open}
        footer={[
          <Button key="ok" type="primary" icon="check" onClick={() => this.props.close()}>
            TAMAM
          </Button>
        ]}
      >
        <div className="gutter-example">
          <Row gutter={16}>
            <Col className="gutter-row" span={12}>
              <Card hoverable style={{ width: 512 }} cover={<img alt="example" src={themeFirst} />}>
                <Meta title="1.Tasarım" description="www.nesbilgi.com.tr" />
              </Card>
            </Col>
            <Col className="gutter-row" span={12}>
              <Card hoverable style={{ width: 512 }} cover={<img alt="example" src={themeSecond} />}>
                <Meta title="2.Tasarım" description="www.nesbilgi.com.tr" />
              </Card>
            </Col>
          </Row>
          <Row gutter={16} style={{ marginTop: 10 }}>
            <Col className="gutter-row" span={12}>
              <Card hoverable style={{ width: 512 }} cover={<img alt="example" src={themeThird} />}>
                <Meta title="3.Tasarım" description="www.nesbilgi.com.tr" />
              </Card>
            </Col>
            <Col className="gutter-row" span={12}>
              <Card hoverable style={{ width: 512 }} cover={<img alt="example" src={themeFourth} />}>
                <Meta title="4.Tasarım" description="www.nesbilgi.com.tr" />
              </Card>
            </Col>
          </Row>
          <Row gutter={16} style={{ marginTop: 10 }}>
            <Col style={{ textAlign: 'center' }} className="gutter-row">
              <strong style={{ color: '#de0000' }}>Not:</strong> Özel Tasarım Yaptırmak İçin (0216 688 51 00) Nolu
              Telefonu Arayarak Satış Temsilcimiz İle Görüşebilirsiniz!
            </Col>
          </Row>
        </div>
      </Modal>
    );
  }
}

const mapStateToProps = ({ htmlPreview }: HtmlPreviewStateType) => ({});

const mapDispatchToProps = (dispatch: Dispatch) => ({});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(HtmlPreview);
