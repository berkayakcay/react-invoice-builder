//TODO: mapStateToProps KONTROL EDİLECEK!
import { Button, Card, Col, Modal, Row } from 'antd';
import Meta from 'antd/lib/card/Meta';
import 'antd/lib/timeline/style/index.css';
import React, { Component } from 'react';
import { connect } from 'react-redux';
import { Dispatch } from 'redux';
import { HtmlPreviewStateType } from '../../types';

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
              <Card
                hoverable
                style={{ width: 512 }}
                cover={<img alt="example" src="https://os.alipayobjects.com/rmsportal/QBnOOoLaAfKPirc.png" />}
              >
                <Meta title="Europe Street beat" description="www.instagram.com" />
              </Card>
            </Col>
            <Col className="gutter-row" span={12}>
              <Card
                hoverable
                style={{ width: 512 }}
                cover={<img alt="example" src="https://os.alipayobjects.com/rmsportal/QBnOOoLaAfKPirc.png" />}
              >
                <Meta title="Europe Street beat" description="www.instagram.com" />
              </Card>
            </Col>
          </Row>
          <Row gutter={16}>
            <Col className="gutter-row" span={12}>
              <Card
                hoverable
                style={{ width: 512 }}
                cover={<img alt="example" src="https://os.alipayobjects.com/rmsportal/QBnOOoLaAfKPirc.png" />}
              >
                <Meta title="Europe Street beat" description="www.instagram.com" />
              </Card>
            </Col>
            <Col className="gutter-row" span={12}>
              <Card
                hoverable
                style={{ width: 512 }}
                cover={<img alt="example" src="https://os.alipayobjects.com/rmsportal/QBnOOoLaAfKPirc.png" />}
              >
                <Meta title="Europe Street beat" description="www.instagram.com" />
              </Card>
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
