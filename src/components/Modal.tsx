import React from "react";
import { Modal, Icon } from "antd";

interface IProps {
  text: string;
}

interface IStates {
  visible: boolean;
}

export class MenuItemModalTrigger extends React.Component<IProps, IStates> {
  constructor(props) {
    super(props);
    this.state = {
      visible: false
    };

    console.log("props", this.props);
    console.log("state", this.state);
  }

  showModal = () => {
    this.setState({
      visible: true
    });
  };

  handleOk = () => {
    this.setState({ visible: false }, () => {});
  };

  handleCancel = () => {
    this.setState({ visible: false }, () => {});
  };

  render() {
    return (
      <React.Fragment>
        <div onClick={this.showModal}>
          <Icon type="right" />
          {this.props.text}
        </div>
        <Modal
          title={this.props.text}
          visible={this.state.visible}
          onOk={this.handleOk}
          onCancel={this.handleCancel}
        >
          {this.props.children}
        </Modal>
      </React.Fragment>
    );
  }
}

export default MenuItemModalTrigger;
