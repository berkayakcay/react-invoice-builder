import React, { PureComponent } from "react";
import { connect } from "react-redux";
import { Dispatch } from "redux";
import { hideModal } from "../../../common/actions";
import { ApplicationState } from "../../../common/store";
import BankInfoModal from "../../../containers/BankInfo/Components/Modals/BankInfoModal";
import CompanyInfoModal from "../../../containers/CompanyInfo/Components/Modals/CompanyInfoModal";
import DocumentNotesModal from "../../../containers/DocumentNotes/Components/Modals/DocumentNotesModal";
import HtmlPreviewModal from "../../../containers/TemplateSelector/Components/Modals/TemplateSelectorModal";
import LogoAndSignatureModal from "../../../containers/LogoAndSignature/Components/Modals/LogoAndSignatureModal";
import { ModalData } from "./types";

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
  CompanyInfoModal: CompanyInfoModal,
  BankInfoModal: BankInfoModal,
  DocumentNotesModal: DocumentNotesModal,
  LogoAndSignatureModal: LogoAndSignatureModal,
  HtmlPreviewModal: HtmlPreviewModal
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
