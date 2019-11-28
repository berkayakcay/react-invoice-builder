import { Button, Col, Modal, Row } from 'antd';
import React, { Component } from 'react';
import { connect } from 'react-redux';
import { Dispatch } from 'redux';
import { LogoModel } from '../../../../common/models';
import { showCroppedLogo } from '../../actions';
import { LogoAndSignatureStateType } from '../../types';
import LogoCropper from './Crop/LogoCropper';
import './styles.scss';

interface IProps {
  open: boolean;
  close: () => void;
  croped: LogoModel;
}

interface IPropsFromDispatch {
  showCroppedLogo: typeof showCroppedLogo;
}

type AllProps = IProps & IPropsFromDispatch;

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
            <Button key="kaydet" type="primary" icon="check" onClick={() => this.props.close()}>
              KAYDET
            </Button>
            <Button key="kapat" type="danger" icon="close" onClick={() => this.props.close()}>
              KAPAT
            </Button>
          </>
        ]}
      >
        {/* <Row>
          <Col>
            <LogoFile />
          </Col>
        </Row>
        <hr style={{ marginTop: 20, marginBottom: 20 }} />
        <Row>
          <Col>
            <Signature />
          </Col>
        </Row> */}
        <Row>
          <Col>
            <LogoCropper
              croppedImage={this.props.croped.logoSrc}
              onDestroy={value => this.props.showCroppedLogo(value)}
            />
          </Col>
        </Row>
      </Modal>
    );
  }
}

const mapStateToProps = ({ logoAndSignature }: LogoAndSignatureStateType) => ({
  croped: logoAndSignature
});

const mapDispatchToProps = (dispatch: Dispatch) => ({
  showCroppedLogo: (params: object | any) => dispatch(showCroppedLogo(params))
});

export default connect(mapStateToProps, mapDispatchToProps)(LogoAndSignatureModal);
