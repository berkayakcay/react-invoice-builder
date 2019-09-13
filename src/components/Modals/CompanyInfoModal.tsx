import { Button, Modal } from 'antd';
import 'antd/lib/timeline/style/index.css';
import React from 'react';
import { connect } from 'react-redux';
import { ApplicationState } from '../../common/store';
import CompanyInfo from '../../containers/CompanyInfo';
interface IProps {
  open: boolean;
  close: () => void;
}

interface PropsFromState {
  data: string;
}

type AllProps = IProps & PropsFromState;

const CompanyInfoModal = (props: AllProps) => {
  return (
    <Modal
      title="Firma Bilgileri"
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
      <CompanyInfo />
    </Modal>
  );
};

const mapStateToProps = ({ modal }: ApplicationState) => ({});

export default connect(
  mapStateToProps,
  null
)(CompanyInfoModal);
