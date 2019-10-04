import { Button, Col, Modal, Row } from 'antd';
import React, { Component } from 'react';
import { connect } from 'react-redux';
import { Dispatch } from 'redux';
import LogoFile from './Logo';
import Signature from './Signature';
import './styles.scss';

interface IProps {
  open: boolean;
  close: () => void;
}

type AllProps = IProps;

class LogoAndSignatureModal extends Component<AllProps> {
  render() {
    return (
      <Modal
        title="Logo Ve İmza"
        onCancel={() => this.props.close()}
        width={500}
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
        <Row>
          <Col>
            <LogoFile />
          </Col>
        </Row>
        <hr style={{ marginTop: 20, marginBottom: 20 }} />
        <Row>
          <Col>
            <Signature />
          </Col>
        </Row>
      </Modal>
    );
  }
}

const mapStateToProps = () => ({});

const mapDispatchToProps = (dispatch: Dispatch) => ({});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(LogoAndSignatureModal);
