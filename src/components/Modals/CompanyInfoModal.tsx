import { Button, Modal } from "antd";
import "antd/lib/timeline/style/index.css";
import React from "react";
import { connect } from "react-redux";
import { ApplicationState } from "../../store";

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
        <Button
          key="submit"
          type="primary"
          icon="close"
          onClick={() => props.close()}
        >
          "KAPAT"
        </Button>
      ]}
    >
      zzz
    </Modal>
  );
};

const mapStateToProps = ({ modal }: ApplicationState) => ({
  data: modal.props.response.data
});

export default connect(
  mapStateToProps,
  null
)(CompanyInfoModal);
