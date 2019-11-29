import { faImages, faSignature } from '@fortawesome/free-solid-svg-icons';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { Button, Col, Modal, Row, Tabs } from 'antd';
import React, { Component } from 'react';
import { connect } from 'react-redux';
import { Dispatch } from 'redux';
import { LogoModel } from '../../../../common/models';
import { logoOnCrop } from '../../actions';
import { LogoAndSignatureStateType } from '../../types';
import LogoCropper from './Crop/LogoCropper';
import SignatureCropper from './Crop/SıgnatureCropper';
import './styles.scss';

interface IProps {
  open: boolean;
  close: () => void;
  croped: LogoModel;
}

interface IPropsFromDispatch {
  logoOnCrop: typeof logoOnCrop;
}

type AllProps = IProps & IPropsFromDispatch;

const { TabPane } = Tabs;
class LogoAndSignatureModal extends Component<AllProps> {
  render() {
    return (
      <Modal
        title="Logo Ve İmza"
        onCancel={() => this.props.close()}
        width={600}
        visible={this.props.open}
        footer={[
          <>
            <Button key="kaydet" type="primary" icon="check">
              KAYDET
            </Button>
            <Button key="kapat" type="danger" icon="close" onClick={() => this.props.close()}>
              KAPAT
            </Button>
          </>
        ]}
      >
        <Tabs defaultActiveKey="1">
          <TabPane
            tab={
              <span>
                <FontAwesomeIcon style={{ color: '#ced4da' }} icon={faImages} /> Logo
              </span>
            }
            key="1"
          >
            <Row>
              <Col>
                <LogoCropper croppedImage={this.props.croped.logoBase64} />
              </Col>
            </Row>
          </TabPane>
          <TabPane
            tab={
              <span>
                <FontAwesomeIcon style={{ color: '#ced4da' }} icon={faSignature} /> İmza
              </span>
            }
            key="2"
          >
            <Row>
              <Col>
                <SignatureCropper croppedImage={this.props.croped.signatureBase64} />
              </Col>
            </Row>
          </TabPane>
        </Tabs>
      </Modal>
    );
  }
}

const mapStateToProps = ({ logoAndSignature }: LogoAndSignatureStateType) => ({
  croped: logoAndSignature
});

const mapDispatchToProps = (dispatch: Dispatch) => ({});

export default connect(mapStateToProps, mapDispatchToProps)(LogoAndSignatureModal);
