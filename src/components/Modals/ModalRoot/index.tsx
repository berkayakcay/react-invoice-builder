import React, { PureComponent } from "react";
import { connect } from "react-redux";
import { Dispatch } from "redux";
import { hideModal } from "../../../actions";
import { ModalData } from "./types";
import { ApplicationState } from "../../../store";
import CompanyInfoModal from "../CompanyInfoModal";

const mapStateToProps = ({ modal }: ApplicationState) => ({
  type: modal.type,
  props: modal.props,
  open: modal.open
});

const mapDispatchToProps = (dispatch: Dispatch) => ({
  hideModal: () => dispatch(hideModal())
});

interface PropsFromState extends ModalData {}

interface IState {
  modalIsOpen: boolean;
}

const MODAL_TYPES = {
  CompanyInfo: CompanyInfoModal
};

interface PropsFromDispatch {
  hideModal: typeof hideModal;
}

type AllProps = PropsFromState & PropsFromDispatch;

class RootModal extends PureComponent<AllProps, IState> {
  constructor(props) {
    super(props);
    this.state = {
      modalIsOpen: this.props.open === undefined ? false : this.props.open
    };
  }

  componentWillReceiveProps(nextProps) {
    this.setState({
      modalIsOpen: nextProps.open
    });
  }

  closeModal() {
    this.setState({ modalIsOpen: false }, () => this.props.hideModal());
  }

  render() {
    if (!this.props.type) {
      return null;
    }
    const SpecifiedModal = MODAL_TYPES[this.props.type];

    return (
      <SpecifiedModal
        {...this.props.props}
        open={this.state.modalIsOpen}
        close={() => this.closeModal()}
      />
    );
  }
}

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(RootModal);
