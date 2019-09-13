import { Button, Modal } from 'antd';
import 'antd/lib/timeline/style/index.css';
import React from 'react';
import { connect } from 'react-redux';
import { ApplicationState } from '../../common/store';
import LogoAndSignature from '../../containers/LogoAndSignature';
interface IProps {
  open: boolean;
  close: () => void;
}

type AllProps = IProps;

const LogoAndSignatureModal = (props: AllProps) => {
  return (
    <Modal
      title="Logo Ve İmza"
      onCancel={() => props.close()}
      width={1024}
      visible={props.open}
      footer={[
        <>
          <Button key="kaydet" type="primary" icon="check" onClick={() => props.close()}>
            KAYDET
          </Button>
          <Button key="kapat" type="danger" icon="close" onClick={() => props.close()}>
            KAPAT
          </Button>
        </>
      ]}
    >
      <LogoAndSignature />
    </Modal>
  );
};

const mapStateToProps = ({ modal }: ApplicationState) => ({});

export default connect(
  mapStateToProps,
  null
)(LogoAndSignatureModal);
