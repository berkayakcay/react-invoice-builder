import { Button, Modal } from "antd";
import "antd/lib/timeline/style/index.css";
import React from "react";
import { connect } from "react-redux";
import { ApplicationState } from "../../common/store";
import BankInfo from "../../containers/BankInfo";
interface IProps {
  open: boolean;
  close: () => void;
}

interface PropsFromState {
  data: string;
}

type AllProps = IProps & PropsFromState;

const BankInfoModal = (props: AllProps) => {
  return (
    <Modal
      title="Banka Bilgileri"
      onCancel={() => props.close()}
      width={1024}
      visible={props.open}
      footer={[
        <Button
          key="submit"
          type="primary"
          icon="close"
          onClick={() => props.close()}
        >
          KAPAT
        </Button>
      ]}
    >
      <BankInfo />
    </Modal>
  );
};

const mapStateToProps = ({ modal }: ApplicationState) => ({});

export default connect(
  mapStateToProps,
  null
)(BankInfoModal);
